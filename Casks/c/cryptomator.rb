cask "cryptomator" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  name_prefix = on_system_conditional macos: "Cryptomator", linux: "cryptomator"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.19.6"
  sha256 arm:          "fdfc8ef50b10baca1078b7a9edf404e330363c8a3a40fda29f86dd5d3a0a0b02",
         intel:        "84eeab413f0b381ec5c7d5844b79ac8fc80abc0e5266a3a3cf3a5ce72e1cfa4a",
         arm64_linux:  "2bc13b968b32c5d3ab5d45087abb9ab4ef01b5584560c17511c956c4c681f82e",
         x86_64_linux: "a6167f6ab3c5f161b31726b94bcf0abcb7f78c857b16e485adeb8e5096b74acd"

  on_macos do
    app "Cryptomator.app"

    zap trash: [
      "~/Library/Application Support/Cryptomator",
      "~/Library/Logs/Cryptomator",
      "~/Library/Preferences/org.cryptomator.plist",
    ]
  end
  on_linux do
    app_image "cryptomator-#{version}-#{arch}.AppImage", target: "Cryptomator.AppImage"

    zap trash: [
      "~/.config/Cryptomator",
      "~/.Cryptomator",
      "~/.local/share/Cryptomator",
    ]
  end

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/#{name_prefix}-#{version}-#{arch}.#{url_end}"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://api.cryptomator.org/desktop/latest-version.json"
    strategy :json do |json|
      json[os]
    end
  end
end

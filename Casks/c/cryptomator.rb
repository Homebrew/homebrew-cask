cask "cryptomator" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  name_prefix = on_system_conditional macos: "Cryptomator", linux: "cryptomator"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.19.4"
  sha256 arm:          "413a48806e7aa2f4c416b84e3a23dbcba83ae20b2ad55534b798f6db65a85860",
         intel:        "a7420613d30322d467b9c4ff57e7f1b2b63d2de715fe94ca60eb4b516715d3fa",
         arm64_linux:  "c2e4241ddeeb84b7fdd6d031f87b884a335f588dd3faf4d606f14ac0a0c3bcb3",
         x86_64_linux: "432b4213f8bfe6db70046813b1798a0ee1460bc9cbb3cc577c8b205cb71abd95"

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

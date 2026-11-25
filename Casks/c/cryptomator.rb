cask "cryptomator" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  name_prefix = on_system_conditional macos: "Cryptomator", linux: "cryptomator"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.19.7"
  sha256 arm:          "c4818d38cb3f9919bfe276c812714596cc50da4d01a82ac2f22bf2e64b441677",
         intel:        "5c575fcebf7e092e4bd7b9bdda99d4d9721128db8ab9bdbeeb21c89db1faa91b",
         arm64_linux:  "92a9a2d461b227e7a9e09a155630fb36776ab9da9e780b0ec3c061b5a57a5139",
         x86_64_linux: "7f0367d8b83fcda665016e1a907683a9037e61589f2493c4206ea850d55fef4e"

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

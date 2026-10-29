cask "cryptomator" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  name_prefix = on_system_conditional macos: "Cryptomator", linux: "cryptomator"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.19.5"
  sha256 arm:          "0df28420179f63a3a9b44c2212907c590b7cd92875970f54a16960db29de3beb",
         intel:        "9db920e8476010e1f2ad3fc186a71f3ab163516ccaf1d494fa616e920cfc0682",
         arm64_linux:  "760bd64d85e956f1c0a5528e8b3e179a178074807415d44206d9c9a01161b19d",
         x86_64_linux: "a4e7b885bc3ee6c65e5e0b95d15088567ed97670ce19c517e20cb091ec2931a3"

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

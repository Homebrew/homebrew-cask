cask "cryptomator" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  name_prefix = on_system_conditional macos: "Cryptomator", linux: "cryptomator"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.19.3"
  sha256 arm:          "0bfe8c6aeb97acf638810e3e576016db510bc7bf71366dc00f3c7eea9a314f23",
         intel:        "371dc9c75ded3d74440b6d597360bff20553f3c01c2c3d9aaf3fc97b46037938",
         arm64_linux:  "dc118d40748d97a0bf62efe44fcbca6c4c6c711e9c97bb9f4f84eb1f06993e29",
         x86_64_linux: "895d09255b5f5fe39029dba337ab0950f8609b3b7919313eeeb18d221e7e25ab"

  on_macos do
    depends_on macos: :big_sur

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

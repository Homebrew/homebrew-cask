cask "rode-connect" do
  version "1.3.39"
  sha256 :no_check

  url "https://update.rode.com/connect/RODE_Connect_MACOS.zip"
  name "Rode Connect"
  desc "Podcasting software"
  homepage "https://rode.com/en-us/software/rodeconnect"

  livecheck do
    url "https://update.rode.com/rode-devices-manifest.json"
    strategy :json do |json|
      json.dig("rode-connect-manifest", "macos", "main-version", "update-version")
    end
  end

  pkg "RØDE Connect (#{version}).pkg"

  uninstall pkgutil: "com.rodeconnect.installer"

  zap trash: [
    "~/Library/Cache/com.rode.rodeconnect",
    "~/Library/HTTPStorages/com.rode.rodeconnect",
    "~/Library/Preferences/com.rode.rodeconnect.plist",
  ]
end

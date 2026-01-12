cask "rode-connect" do
  version "1.3.47"
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

  # The url is unversioned, but the download returns a pkg with a version number
  rename "RØDE Connect*.pkg", "RØDE Connect.pkg"

  pkg "RØDE Connect.pkg"

  uninstall pkgutil: "com.rodeconnect.installer"

  zap trash: [
    "~/Library/Cache/com.rode.rodeconnect",
    "~/Library/HTTPStorages/com.rode.rodeconnect",
    "~/Library/Preferences/com.rode.rodeconnect.plist",
  ]
end

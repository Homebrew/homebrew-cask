cask "rode-connect" do
  version "1.3.39"
  sha256 :no_check

  url "https://update.rode.com/connect/RODE_Connect_MACOS.zip"
  name "Rode Connect"
  desc "Podcasting software"
  homepage "https://rode.com/en-us/software/rodeconnect"

  # Upstream's update manifest is out of date but may be able to be used in future
  # https://update.rode.com/rode-devices-manifest.json
  # json.dig("rode-connect-manifest", "macos", "main-version", "update-version")
  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "RØDE Connect (#{version}).pkg"

  uninstall pkgutil: "com.rodeconnect.installer"

  zap trash: [
    "~/Library/Cache/com.rode.rodeconnect",
    "~/Library/HTTPStorages/com.rode.rodeconnect",
    "~/Library/Preferences/com.rode.rodeconnect.plist",
  ]
end

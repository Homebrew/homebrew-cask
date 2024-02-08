cask "logmein-hamachi" do
  version "2.1.827"
  sha256 :no_check

  url "https://secure.logmein.com/LogMeInHamachi.zip",
      verified: "logmein.com/"
  name "LogMeIn Hamachi"
  desc "Hosted VPN service that lets you securely extend LAN-like networks"
  homepage "https://vpn.net/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.logmein.hamachiinstaller"].short_version
    end
  end

  installer manual: "LogMeInHamachiInstaller.app"

  uninstall script: {
    executable: "/Applications/LogMeIn Hamachi/HamachiUninstaller.app/Contents/Resources/uninstaller.sh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/LogMeIn Hamachi",
    "~/Library/Application Support/LogMeIn Hamachi",
  ]
end

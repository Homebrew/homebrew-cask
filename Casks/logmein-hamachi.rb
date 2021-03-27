cask "logmein-hamachi" do
  version :latest
  sha256 :no_check

  url "https://secure.logmein.com/LogMeInHamachi.zip",
      verified: "logmein.com/"
  name "LogMeIn Hamachi"
  homepage "https://vpn.net/"

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

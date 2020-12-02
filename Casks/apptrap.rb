cask "apptrap" do
  version "1.2.4"
  sha256 "54c01bca14a521513e5a90dee282a635a766e02b87e363df494a4bf7c220f0d1"

  url "http://onnati.net/apptrap/download/AppTrap#{version.dots_to_hyphens}.zip"
  appcast "http://onnati.net/apptrap/ReleaseNotes.xml"
  name "AppTrap"
  homepage "http://onnati.net/apptrap/"

  prefpane "AppTrap.prefPane"

  uninstall login_item: "AppTrap"

  zap trash: "~/Library/Preferences/com.KumaranVijayan.AppTrap.prefpanel.plist"
end

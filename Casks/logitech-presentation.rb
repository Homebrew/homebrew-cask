cask "logitech-presentation" do
  version "1.62.2"
  sha256 "ca08be8c52cd40251c4a39bf2536b962aabb26ba7df26729cfc44c3abcacf9cd"

  url "https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_#{version.major_minor_patch}.dmg",
      verified: "download01.logi.com/web/ftp/pub/techsupport/presentation/"
  name "Logitech Presentation"
  homepage "https://support.logitech.com/en_au/product/spotlight-presentation-remote"

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "LogiPresentation Installer.app"

  uninstall delete:     "/Applications/Logitech Presentation",
            login_item: "LogiPresentation",
            signal:     [
              ["KILL", "LogiPresentation"],
            ]

  zap trash: "/Library/Application Support/Logitech.localized/Logitech Presentation.localiz"
end

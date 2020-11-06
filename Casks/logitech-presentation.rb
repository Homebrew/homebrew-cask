cask "logitech-presentation" do
  version "1.60.92"
  sha256 "49c48a8c8c7f677c96dedfa2d98d1ff4667b534565d087f70fd3d1a1b12cb66f"

  # download01.logi.com/web/ftp/pub/techsupport/presentation/ was verified as official when first introduced to the cask
  url "https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_#{version.major_minor_patch}.dmg"
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

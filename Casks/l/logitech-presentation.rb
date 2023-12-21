cask "logitech-presentation" do
  version "2.00.43"
  sha256 "8562103144e6ca965cdf6b2c9046d40ff8c35a9bf4f769acbe81f07b8732ef64"

  url "https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_#{version.major_minor_patch}.dmg",
      verified: "download01.logi.com/web/ftp/pub/techsupport/presentation/"
  name "Logitech Presentation"
  desc "Presentation software"
  homepage "https://support.logitech.com/en_au/product/spotlight-presentation-remote"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ee425650-8e0b-11e9-8db1-773d1e87aeb4"
    regex(/href=.*?LogiPresentation[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "LogiPresentation Installer.app"

  uninstall signal:     ["KILL", "LogiPresentation"],
            login_item: "LogiPresentation",
            delete:     "/Applications/Logitech Presentation"

  zap trash: "/Library/Application Support/Logitech.localized/Logitech Presentation.localiz"
end

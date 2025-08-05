cask "logitech-presentation" do
  version "2.10.276"
  sha256 "407f36bd6a5805726a54295e8e5b4bd31db99efe1d99015eb9db5fcd71402eb7"

  url "https://download01.logi.com/web/ftp/pub/techsupport/presentation/LogiPresentation_#{version.major_minor_patch}.dmg",
      verified: "download01.logi.com/web/ftp/pub/techsupport/presentation/"
  name "Logitech Presentation"
  desc "Presentation software"
  homepage "https://support.logitech.com/en_au/product/spotlight-presentation-remote"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ee425650-8e0b-11e9-8db1-773d1e87aeb4"
    regex(/href=.*?LogiPresentation[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["articles"]&.map do |article|
        match = article["body"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "LogiPresentation Installer.app"

  uninstall signal:     ["KILL", "LogiPresentation"],
            login_item: "LogiPresentation",
            delete:     "/Applications/Logitech Presentation"

  zap trash: "/Library/Application Support/Logitech.localized/Logitech Presentation.localiz"
end

cask "camerabag-photo" do
  version "2026.2.0"
  sha256 "9e4a957218b3c6d19554aa17c971c2f4a714ee4685552748dd1838c2fe4b1cc8"

  url "https://nevercenter.com/camerabag/download/filearchive/Install_CameraBag_Photo_#{version.dots_to_underscores}_mac.dmg"
  name "CameraBag"
  desc "Filter and edit photos"
  homepage "https://nevercenter.com/camerabag/photo/"

  livecheck do
    url "https://nevercenter.com/camerabag/download/?filetype=mac"
    regex(/href=.*?Install[._-]?CameraBag[._-]?Photo[._-]?v?(\d+(?:[._]\d+)+)[._-]?mac\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on :macos

  app "CameraBag Photo.app"

  uninstall quit: "com.nevercenter.camerabagphoto"

  zap trash: "~/Library/Saved Application State/com.nevercenter.camerabagphoto.savedState"
end

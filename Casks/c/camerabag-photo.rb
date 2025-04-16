cask "camerabag-photo" do
  version "2025.1.0"
  sha256 "1b371b6209996d6e630b3ba0656e0b3c4771c2aed12299262f14ad63bcc7783d"

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

  depends_on macos: ">= :high_sierra"

  app "CameraBag Photo.app"

  zap trash: "~/Library/Saved Application State/com.nevercenter.camerabagphoto.savedState"
end

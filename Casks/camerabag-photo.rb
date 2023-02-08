cask "camerabag-photo" do
  version "2023.0.0"
  sha256 "7b6d79c3b702b90dfd30ee55caa9495750605954e280570161efbe13e5355883"

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

  depends_on macos: ">= :catalina"

  app "CameraBag Photo.app"

  zap trash: "~/Library/Saved Application State/com.nevercenter.camerabagphoto.savedState"
end

cask "camerabag-photo" do
  version "2025.0.3"
  sha256 "4cd6e2767e0a9ad31c0ef4f99f466a2e5b752bd8c322f210b09c14d006156a88"

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

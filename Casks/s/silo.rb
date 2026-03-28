cask "silo" do
  version "2026.0.0"
  sha256 "a434179d55a66e299fc4dd453c90db86a8042f628a75f1e51811ddcaee90965f"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.dots_to_underscores}_mac.dmg"
  name "Silo"
  desc "3D polygonal modeller and UV mapper"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download/?filetype=silomac"
    regex(/href=.*?Install[._-]Silo[._-]v?(\d+(?:[._]\d+)+)(?:[._-]mac)?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  app "Silo.app"

  zap trash: [
    "/Library/Caches/com.nevercenter.silo",
    "~/Library/Application Support/com.nevercenter.silo",
  ]
end

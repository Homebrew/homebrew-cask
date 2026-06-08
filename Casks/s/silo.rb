cask "silo" do
  version "2026.1.0"
  sha256 "db3ae16e1997a301ef8e67059a897d453207d3df0e8d90739cb17209cac0f811"

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

  depends_on :macos

  app "Silo.app"

  zap trash: [
    "/Library/Caches/com.nevercenter.silo",
    "~/Library/Application Support/com.nevercenter.silo",
  ]
end

cask "silo" do
  version "2027.0.0"
  sha256 "5d153876bba79eb1019d121a24ce49c5d31a006b14ef0bade16e0bb67f323d4a"

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

  uninstall quit: "com.nevercenter.silo"

  zap trash: [
    "/Library/Caches/com.nevercenter.silo",
    "~/Library/Application Support/com.nevercenter.silo",
  ]
end

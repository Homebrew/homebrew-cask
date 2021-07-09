cask "dbschema" do
  version "8.4.2"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name "DbSchema"
  desc "Design, document and deploy databases"
  homepage "https://www.dbschema.com/"

  livecheck do
    url "https://www.dbschema.com/download.html"
    strategy :page_match do |page|
      v = page[%r{href=.*?/DbSchema_macos_(\d+(?:_\d+)*)\.tgz}i, 1]
      v.tr("_", ".")
    end
  end

  app "DbSchema.app"
end

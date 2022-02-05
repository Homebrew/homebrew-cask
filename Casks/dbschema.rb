cask "dbschema" do
  version "8.5.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name "DbSchema"
  desc "Design, document and deploy databases"
  homepage "https://www.dbschema.com/"

  livecheck do
    url "https://www.dbschema.com/download.html"
    strategy :page_match do |page|
      v = page[/href=.*?DbSchema[._-]macos[._-]v?(\d+(?:_\d+)+)\.t/i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  app "DbSchema.app"

  # No zap stanza required
end

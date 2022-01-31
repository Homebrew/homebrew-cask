cask "dbschema" do
  version "8.5.0"
  sha256 "265eaee98e233ff672566c711fa43c0fae5491a55116e7644c3c734ae477dfba"

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

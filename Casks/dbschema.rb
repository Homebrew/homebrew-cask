cask "dbschema" do
  version "9.3.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name "DbSchema"
  desc "Design, document and deploy databases"
  homepage "https://www.dbschema.com/"

  livecheck do
    url "https://www.dbschema.com/download.html"
    regex(/href=.*?DbSchema[._-]macos[._-]v?(\d+(?:_\d+)+)\.t/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "DbSchema.app"

  # No zap stanza required
end

cask "dbschema" do
  version "9.6.1"
  sha256 "37b8ef2fa348a51bdf0cadd2fdfdd7a3c33e4eee81c4f60c16fe0f0e2a246f39" # See sha256sums at https://dbschema.com/download/sha256sums
  
  url "https://dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name "DbSchema"
  desc "Design, document and deploy databases"
  homepage "https://dbschema.com/"

  livecheck do
    url "https://dbschema.com/download.html"
    regex(/href=.*?DbSchema[._-]macos[._-]v?(\d+(?:_\d+)+)\.t/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  app "DbSchema.app"

  # No zap stanza required
end

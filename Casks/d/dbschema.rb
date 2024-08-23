cask "dbschema" do
  version "9.6.1"
  sha256 "30bf470b85860984297e7aad0250964ab0cdae46673fd866f80fdbc4f8f58ba4" # See sha256sums at https://dbschema.com/download/sha256sums
  
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

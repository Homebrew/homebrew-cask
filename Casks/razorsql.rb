cask "razorsql" do
  arch arm: "_aarch64"

  version "10.0.9"
  sha256 arm:   "826c980aa1d17a19c8a24b06ccfa0a28365b2c4c196fb7aabe4a1c12ecf44b0a",
         intel: "d15741e8582ae0d1e00b5b46863dcab07e85b44b8d754dea2e4f76df12dcf5be"

  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/"
  name "RazorSQL"
  desc "SQL query tool and SQL editor"
  homepage "https://razorsql.com/"

  livecheck do
    url "https://razorsql.com/download_mac.html"
    regex(/href=.*?razorsql[._-]?v?(\d+(?:[._]\d+)+)#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :mojave"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

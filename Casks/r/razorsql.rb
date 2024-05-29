cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.0"
  sha256 arm:   "9fef2aba1731015afc9ab2bc85163745be0eb74419a64bc57d5e79449d8c77f0",
         intel: "f0339dbe62b103751dd291f817bcf94d778b5b1d09fffd8d45d2b2202ad5cae4"

  url "https://s3.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.amazonaws.com/"
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

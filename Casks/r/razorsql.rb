cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.1"
  sha256 arm:   "e4c8323e802f263d72f29b9b58c03f7ebd11d42695c8b276968415acab1a83c9",
         intel: "bf29841e26938a491d48137647aa648af0b4c42044e285d406478225945168b3"

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

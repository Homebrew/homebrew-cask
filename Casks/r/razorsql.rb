cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.8"
  sha256 arm:   "0de8d76bb031dda0a788a8812e65141f461038b9cf5f4d0b3036730f47c81e68",
         intel: "e5a3c720548e202984e50a2393f78a0d1dd190c7dc87b79ff205861d522a3619"

  url "https://s3.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.amazonaws.com/downloads.razorsql.com/downloads/"
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

  depends_on macos: ">= :big_sur"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

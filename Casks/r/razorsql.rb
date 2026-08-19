cask "razorsql" do
  arch arm: "_aarch64"

  version "11.0.3"
  sha256 arm:   "eb2b2a97b8893272df509382f2764315ad31e6c3641fba5f5213a0c4085ed4a1",
         intel: "80761f9a1af8f2371fd4f3cfb84d39e9c38087d1398d5f875df2ca3a0784a44e"

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

  depends_on macos: :big_sur

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

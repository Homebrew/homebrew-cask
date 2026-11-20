cask "razorsql" do
  arch arm: "_aarch64"

  version "11.0.4"
  sha256 arm:   "1e6dd1a03d16cef166e8574ce5525fa1176931944fede6e8058748a358bf3490",
         intel: "deda7d7dabbe365d3eac553f44c1fd1ffa562d9b9f2ea0aac8031ba40c5acadb"

  url "https://s3.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg"
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

  depends_on :macos

  app "RazorSQL.app"

  zap trash: [
    "~/.razorsql",
    "~/Library/RazorSQL",
  ]
end

cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.2"
  sha256 arm:   "186e36365ce71fc93d8cc6255ce2e196e7e0fd450cfbb688efdcecb684cae9da",
         intel: "cddcb813d5da25cf1d56e893f7650e22664a21c85e327adf84b4aef6c87f215d"

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

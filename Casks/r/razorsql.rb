cask "razorsql" do
  arch arm: "_aarch64"

  version "11.0.0"
  sha256 arm:   "3c801cba7156975c6d91947263edef05a2456899c0fbb85431a9335ad4138e18",
         intel: "dbfb4f35b8f40cd7d5d277c8a776ab9161ac848b5132898d85d5b104d2a41c46"

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

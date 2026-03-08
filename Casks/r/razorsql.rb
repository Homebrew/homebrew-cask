cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.7"
  sha256 arm:   "385cbbd2c2afa3866623037ef674c325c44547d9db62813a6fc4c436e8842021",
         intel: "3b2bcc7ebd7b7de8df8e8ecafd98884898faeec6f50edaa52dcc59ee0c4d0c64"

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

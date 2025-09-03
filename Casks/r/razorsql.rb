cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.6"
  sha256 arm:   "48715dcf3443696aa9e7182abab02ee0ce3064ff7fc20b0662be42044f1ccbe8",
         intel: "0c8bc5a838b767cf215727bfd872d6f2e86c25b8ed7c0954d91593b160519bfd"

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

  depends_on macos: ">= :mojave"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

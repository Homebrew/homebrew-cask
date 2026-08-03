cask "razorsql" do
  arch arm: "_aarch64"

  version "11.0.1"
  sha256 arm:   "3131a8f56d1245b672b52c735075c1b0ef454cbfc4e3c04289218116ffd236d5",
         intel: "2ff0a20f74eafbe86455cb1b3b6ef378ce4510c11c44ba5c644ea182d2b6b47a"

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

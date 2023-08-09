cask "razorsql" do
  arch arm: "_aarch64"

  version "10.4.4"
  sha256 arm:   "bb5a8cf017cd4ec7f30c203bd90480575ef1e700a1bca1205b56a55c53b4760a",
         intel: "06ac51a22bfe35e03886207a7f1e2e36f138b164809a30de29e17688f692311b"

  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/"
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

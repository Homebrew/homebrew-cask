cask "razorsql" do
  arch arm: "_aarch64"

  version "10.5.0"
  sha256 arm:   "8f0bef521c820479867b51e4e67238aebf5eaa5d75914f3d87753c367dcf6ff5",
         intel: "5272640da7b80ab27359a37992f675800acd6f999decaccbb36512d02c9cdbcf"

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

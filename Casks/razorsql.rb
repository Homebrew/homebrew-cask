cask "razorsql" do
  arch arm: "_aarch64"

  version "10.4.2"
  sha256 arm:   "1a44a245ac443a07e636726cda4237565811a229649cba611ceaa4e62224e07c",
         intel: "c5547108301da058def75a3203fceefff1bbb5d87e31fd0fcd44d5ed98e8bbfe"

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

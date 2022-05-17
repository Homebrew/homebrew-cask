cask "razorsql" do
  version "10.0.3"
  sha256 "6c2fdb01b8ed53de80fdbc912ec652d56d2add1780227cc0e679a10bc1b2c9e6"

  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  desc "SQL query tool and SQL editor"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :mojave"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

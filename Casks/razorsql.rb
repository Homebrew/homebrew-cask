cask "razorsql" do
  version "9.2.7"
  sha256 "683b5124c21166b4747cc6e165ba0a709d932634fa8d881d7a8aca1f3b39b959"

  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :high_sierra"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

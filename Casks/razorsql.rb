cask "razorsql" do
  version "9.2.1"
  sha256 "32fa7190e18cb4502f1e99894ec85eb87bf160d6867166c54bd1d2bdf85b24bc"

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :high_sierra"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

cask "razorsql" do
  version "9.2.2"
  sha256 "552dab963e64762efa99ebc5e531ab3474f1877dada62c90fd21ccf6eb3d43fe"

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :high_sierra"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

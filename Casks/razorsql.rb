cask "razorsql" do
  version "9.2.3"
  sha256 "66747440ec22c1a1627a5b572f4d09ff41901add4c55ae58e78ed69c0d279327"

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :high_sierra"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

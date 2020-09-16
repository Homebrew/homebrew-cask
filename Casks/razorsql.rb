cask "razorsql" do
  version "9.1.6"
  sha256 "f9e2b9e75e50d0b4a4a1fe4e3396bd05e540689017831f8ebe8fe7c605662cb9"

  # s3.dualstack.us-east-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}.dmg"
  appcast "https://razorsql.com/updates.html"
  name "RazorSQL"
  homepage "https://razorsql.com/"

  depends_on macos: ">= :high_sierra"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end

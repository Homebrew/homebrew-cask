cask "reamp" do
  version "1.6.3,511"
  sha256 "f31f664d512fd248d479fc82e17670d1e99bd4f37174698b39faf74ab3b05460"

  url "https://re-amp.ru/app/releases/reAMP-#{version.csv.first}.zip"
  name "re:AMP"
  desc "WinAMP clone written in SwiftUI"
  homepage "https://re-amp.ru/"

  livecheck do
    url "https://re-amp.ru/app/appcast.xml"
    strategy :sparkle
  end

  app "reAMP.app"

  zap trash: "~/Library/Application Support/REAmp"
end

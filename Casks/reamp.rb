cask "reamp" do
  version "1.6.3"
  sha256 "f31f664d512fd248d479fc82e17670d1e99bd4f37174698b39faf74ab3b05460"

  url "https://re-amp.ru/app/releases/reAMP-#{version}.zip"
  appcast "https://re-amp.ru/app/appcast.xml"
  name "re:AMP"
  desc "WinAMP clone written in SwiftUI"
  homepage "https://re-amp.ru/"

  app "reAMP.app"

  zap trash: "~/Library/Application Support/REAmp"
end

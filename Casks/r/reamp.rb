cask "reamp" do
  version "1.7.0,996"
  sha256 "599706af852bbf305252827be85ba36a7cbfbb67829c4fed94c3ad43ca36cb61"

  url "https://update.re-amp.ru/downloads/Reamp-#{version.csv.first}(#{version.csv.second}).zip"
  name "re:AMP"
  desc "WinAMP clone written in SwiftUI"
  homepage "https://re-amp.ru/"

  livecheck do
    url "https://re-amp.ru/app/appcast.xml"
    strategy :sparkle, &:nice_version
  end

  depends_on :macos

  app "reAMP.app"

  zap trash: [
    "~/Library/Application Scripts/ru.alexfreud.ReAmp.ReAmpQuickLook",
    "~/Library/Application Support/REAmp",
    "~/Library/Application Support/ru.alexfreud.ReAmp",
    "~/Library/Caches/ru.alexfreud.ReAmp",
    "~/Library/Containers/ru.alexfreud.ReAmp.ReAmpQuickLook",
    "~/Library/HTTPStorages/ru.alexfreud.ReAmp",
    "~/Library/Preferences/ru.alexfreud.ReAmp.plist",
  ]
end

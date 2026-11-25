cask "reamp" do
  version "2.1.0,1115"
  sha256 "8ad934eff6d871aa1571bc889bfe5b8e918956b35d1203d7889d1390fb302d76"

  url "https://update.re-amp.ru/downloads/Reamp-#{version.csv.first}(#{version.csv.second}).zip"
  name "re:AMP"
  desc "WinAMP clone written in SwiftUI"
  homepage "https://re-amp.ru/"

  livecheck do
    url "https://re-amp.ru/app/appcast.xml"
    strategy :sparkle, &:nice_version
  end

  depends_on :macos

  app "Reamp.app"

  uninstall quit: "ru.alexfreud.ReAmp"

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

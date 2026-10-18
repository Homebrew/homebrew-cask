cask "reamp" do
  version "2.0.0,1077"
  sha256 "e415d00abf06efdcf0c99e9d8e2d9c2b3e5b65245648934183ff6610e74750d9"

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

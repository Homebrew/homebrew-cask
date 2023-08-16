cask "tachidesk-sorayomi" do
  version "0.5.10"
  sha256 "7de8b9c8d4fd6c087c8291ededc05cd5ae9416049fac3091befb018ca6363fdb"

  url "https://github.com/Suwayomi/Tachidesk-Sorayomi/releases/download/#{version}/tachidesk-sorayomi-#{version}-macos-x64.zip"
  name "Tachidesk Sorayomi"
  desc "Manga reader"
  homepage "https://github.com/Suwayomi/Tachidesk-Sorayomi/"

  depends_on macos: ">= :mojave"

  app "Tachidesk Sorayomi.app"

  zap trash: [
    "~/Library/Application Scripts/com.suwayomi.tachideskSorayomi",
    "~/Library/Containers/com.suwayomi.tachideskSorayomi",
  ]
end

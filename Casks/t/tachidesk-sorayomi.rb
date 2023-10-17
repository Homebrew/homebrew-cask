cask "tachidesk-sorayomi" do
  version "0.5.16"
  sha256 "9b4d36bf967ffe6b74bfb40afea23c992c22ae9976a5e8a32dfbf2bd623f473d"

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

cask "tachidesk-sorayomi" do
  version "0.6.1"
  sha256 "3405d65fb23517e28e87bfb16817e5d439fb8d789b0fea9428e9c3caa1116aa5"

  url "https://github.com/Suwayomi/Tachidesk-Sorayomi/releases/download/#{version}/tachidesk-sorayomi-#{version}-macos-x64.zip"
  name "Tachidesk Sorayomi"
  desc "Manga reader"
  homepage "https://github.com/Suwayomi/Tachidesk-Sorayomi/"

  depends_on macos: ">= :catalina"

  app "Sorayomi.app"

  zap trash: [
    "~/Library/Application Scripts/com.suwayomi.tachideskSorayomi",
    "~/Library/Containers/com.suwayomi.tachideskSorayomi",
  ]
end

cask "tachidesk-sorayomi" do
  version "0.5.19"
  sha256 "c54fc3975ef6c8798b4a662c8a4b681814a2caaada80021d9294a0ffd3081ebf"

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

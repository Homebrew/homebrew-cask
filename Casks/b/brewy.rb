cask "brewy" do
  version "0.2.0"
  sha256 "fc79db8c3e05038adb1b181d6dc5681f8d9e522320d4dd6696408ea3bf13c23c"

  url "https://github.com/p-linnane/Brewy/releases/download/#{version}/Brewy-#{version}.zip"
  name "Brewy"
  desc "Native app for managing Homebrew packages"
  homepage "https://github.com/p-linnane/Brewy"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Brewy.app"

  zap trash: [
    "~/Library/Application Scripts/com.linnane.Brewy",
    "~/Library/Application Support/Brewy",
    "~/Library/Containers/com.linnane.Brewy",
    "~/Library/Preferences/Brewy.plist",
    "~/Library/Preferences/io.linnane.Brewy.plist",
  ]
end

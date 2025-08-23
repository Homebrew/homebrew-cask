cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "88242f9d488e110c15ab8ab95b2093a6fba7bba883d11f4fb26d8bcf2d610826",
         intel: "7ff185e6d0eefd8a0a90a52f873eb1d5f8ab0ca7430263312672276711cd6d56"

  url "https://releases.cherry-ai.com/Cherry-Studio-#{version}-#{arch}.zip"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://cherry-ai.com/"

  livecheck do
    url "https://releases.cherry-ai.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Cherry Studio.app"
  binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

  zap trash: [
    "~/Library/Application Support/CherryStudio",
    "~/Library/Caches/cherrystudio-updater",
    "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
    "~/Library/Logs/CherryStudio",
    "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
    "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
  ]
end

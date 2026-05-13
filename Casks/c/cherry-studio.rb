cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.9.5"
  sha256 arm:   "dba05d6b87e6068b5444ce4d3bef12cf9184fc6ecc863167e0f46bbb05c4b973",
         intel: "eb28e802063777db91643b2660ef7e9b762c7c892ded82f3656d0d738af1f65b"

  url "https://releases.cherry-ai.com/Cherry-Studio-#{version}-#{arch}.zip"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://cherry-ai.com/"

  livecheck do
    url "https://releases.cherry-ai.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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

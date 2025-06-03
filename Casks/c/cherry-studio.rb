cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "ef5b8a803f63a1c96125ac8b0385ad5ce2d65234c7fa7e7a4beac653205c2759",
         intel: "add44e12117bd033c6bfdb765c0f76e2f95fea35b9d490d99cffed51c59408fa"

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

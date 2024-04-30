cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "3.6.4"
  sha256 arm:   "5868a0e0479134b300e9f1fca0c484d8fdef4e611a48b46bbe912d430983378c",
         intel: "3a1b5692d38b4d1d63462f3a900e33e3e0c5e8f1a955b36a9515369f55c40fc0"

  url "https://github.com/phcode-dev/phoenix-desktop/releases/download/prod-app-v#{version}/Phoenix.Code_#{version}_#{arch}.dmg",
      verified: "github.com/phcode-dev/phoenix-desktop/"
  name "Phoenix Code"
  desc "Code editor"
  homepage "https://phcode.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Phoenix Code.app"

  zap trash: [
        "~/Library/Application Support/io.phcode",
        "~/Library/Caches/io.phcode",
        "~/Library/Saved Application State/io.phcode.savedState",
        "~/Library/WebKit/io.phcode",
      ],
      rmdir: "~/Documents/Phoenix Code"
end

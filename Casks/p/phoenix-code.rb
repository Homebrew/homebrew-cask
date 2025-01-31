cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.3"
  sha256 arm:   "6eb5238eb6e2bf53b4ec976faf9ae5a035a409dc74776ad56f09eed6020702d2",
         intel: "c88f999d6d51f1a70a8463b6d7f30da97dfc442dac917819dee391a2c201f885"

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

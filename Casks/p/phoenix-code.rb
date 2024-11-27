cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "eae61c3b2b2907268a388d0faa6723b22c789abb061799dab9c9a19a7708cc9f",
         intel: "08c030b89bb242475b9d98b028971fcf08877430946a7bbd2a52b122316ba1a1"

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

cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.6"
  sha256 arm:   "767549d4af463aae72940e90ffa4348aab92bb2dbdb4ab139f156886db5b763f",
         intel: "fdaa2d7101d85c68266f710b568afb6f30b23381b8eec3beb58967424feaf654"

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

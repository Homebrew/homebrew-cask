cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "2.3.2"
  sha256 arm:   "c7e9493e0903561c27ddfdadad4231624021a279c910839eec579622f7123fe3",
         intel: "8b75f434ea296d970e668da6ba5bf174ab6314370a45e26ef601e2377709a081"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end

cask "sabaki" do
  arch arm: "arm64", intel: "x64"

  version "0.60.0"
  sha256 arm:   "b088788113a84748d75f63067efb99a98e95e0229dfb03d565295c70c524ed50",
         intel: "c44b9f253351e84d91b40cfd51257d12fc6772980791fbdf42e253f7f17ca992"

  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-#{arch}.dmg",
      verified: "github.com/SabakiHQ/Sabaki/"
  name "Sabaki"
  desc "Go board and SGF editor"
  homepage "https://sabaki.yichuanshen.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Sabaki.app"

  zap trash: [
    "~/Library/Application Support/Sabaki",
    "~/Library/Preferences/de.yichuanshen.sabaki.plist",
    "~/Library/Saved Application State/de.yichuanshen.sabaki.savedState",
  ]
end

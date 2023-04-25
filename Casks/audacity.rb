cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "d57fe854dd7b6e53e1eea43c34ec94f317ee8dca42696665a4fa5890d7d44e3f",
         intel: "7f78120e25e82d9793bff95e1ffa283ac295d99715baa2591abae477ed6681d5"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end

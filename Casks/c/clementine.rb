cask "clementine" do
  version "1.4.7"
  sha256 "0f94c023c90323e6d0a9c43b8483809868dd23e4d10fb7bd498f7e47dda67987"

  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  name "Clementine"
  desc "Music player and library organiser"
  homepage "https://www.clementine-player.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Clementine.app"

  zap trash: [
    "~/Library/Application Support/Clementine",
    "~/Library/Caches/org.clementine-player.clementine",
    "~/Library/Preferences/org.clementine-player.clementine.plist",
    "~/Library/Saved Application State/org.clementine-player.clementine.savedState",
  ]
end

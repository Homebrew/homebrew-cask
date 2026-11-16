cask "clementine" do
  version "1.4.6"
  sha256 "732688870a3108e1df1c1c51c39b26a2362ba4bae9ef6a1c90513f58ce946eac"

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

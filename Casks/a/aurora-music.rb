cask "aurora-music" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "b36b55e8cfbdbf3b99f29becbafa39574606d736e15dc821142e88e680444874",
         intel: "f6c9248c49ce1c2d6d03cbb0f15d0e331beb3b74d13f76d88d83d66c61d1956d"

  url "https://github.com/nanjingya/Aurora-Music/releases/download/v#{version}/Aurora-Music-#{version}-mac-#{arch}.dmg",
      verified: "github.com/nanjingya/Aurora-Music/"
  name "Aurora Music"
  desc "Immersive music player with lyrics stage, particle visuals, and 3D playlist shelf"
  homepage "https://github.com/nanjingya/Aurora-Music"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Aurora Music.app"

  zap trash: [
    "~/Library/Application Support/Aurora Music",
  ]
end

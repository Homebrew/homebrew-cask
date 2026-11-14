cask "lattice" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.17"
  sha256 arm:   "77338e91a71b3f253447934128dcc20bb937b4fae6b2aaa356f043627347810e",
         intel: "7be5151fdcc3b55f8b5b8610c01f0d367a6cfa280cbe5c66c8c17b971ee88286"

  url "https://github.com/leo1oel/lattice/releases/download/v#{version}/Lattice_#{version}_#{arch}.dmg"
  name "Lattice"
  desc "LaTeX editor"
  homepage "https://leo1oel.github.io/lattice/"

  auto_updates true
  depends_on macos: :sonoma

  app "Lattice.app"

  zap trash: [
        "~/Library/Application Support/app.leo1oel.researchwriter",
        "~/Library/Caches/app.leo1oel.researchwriter",
        "~/Library/Logs/app.leo1oel.researchwriter",
        "~/Library/Preferences/app.leo1oel.researchwriter.plist",
        "~/Library/WebKit/app.leo1oel.researchwriter",
      ],
      rmdir: "~/Documents/Lattice Tutorials"
end

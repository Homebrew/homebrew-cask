cask "lattice" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.16"
  sha256 arm:   "e2557205f2a24113e0d4963f0e8c44fcb7ef34316415f4bd33f32866baf683c8",
         intel: "eea0b4a67561755ca610cdb08a67f91a34ab225b11c1283cce92348af19e58c4"

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

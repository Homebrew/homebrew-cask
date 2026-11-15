cask "lattice" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.18"
  sha256 arm:   "09e316fbb0febf5717e4f0b33fba8e2ce5675a79cf95f35a438a065be1bce20d",
         intel: "883d49b817f038eaf46c08f00433b96d1a34445ffaf45fb7d55ea9f2b301ced9"

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

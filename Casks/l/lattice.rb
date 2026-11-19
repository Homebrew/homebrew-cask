cask "lattice" do
  version "0.17.0"
  sha256 "808d00602b19541d330da0b27b170dc5f9b1e0af0da54470c1d24c1b5c91ceda"

  url "https://github.com/leo1oel/lattice/releases/download/v#{version}/Lattice_#{version}_aarch64.dmg"
  name "Lattice"
  desc "LaTeX editor"
  homepage "https://leo1oel.github.io/lattice/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
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

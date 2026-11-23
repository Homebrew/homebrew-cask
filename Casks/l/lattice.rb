cask "lattice" do
  version "0.19.3"
  sha256 "8aa873347a2346ac6c7010e372ffb6fae53f47940fa41f8ba3cc5fa1fd5e2585"

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

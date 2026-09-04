cask "brewmate" do
  version "1.0.40"
  sha256 "1202145cfe7116a928cfeb4c616ed641e30c6315011677c4ce6ee110f382d1f0"

  url "https://github.com/romankurnovskii/BrewMate/releases/download/#{version}/BrewMate-#{version}.AppImage"
  name "BrewMate"
  desc "Homebrew GUI apps manager"
  homepage "https://github.com/romankurnovskii/BrewMate"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :linux
  depends_on arch: :x86_64

  app_image "BrewMate-#{version}.AppImage", target: "BrewMate.AppImage"

  zap trash: [
    "~/.config/brewmate",
    "~/.config/BrewMate",
  ]
end

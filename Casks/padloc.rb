cask "padloc" do
  arch arm: "arm64", intel: "x64"

  version "4.0.2"
  sha256 arm:   "a872d1782d09f2236d27288f2370d193935acc4798ad58656304bf6890128125",
         intel: "a2e84055403f35e141a46afc2ef7765e20c210572d26ae8de903fe47fa1db9ed"

  url "https://github.com/padloc/padloc/releases/download/v#{version}/padloc_#{version}_macos_electron_#{arch}.dmg",
      verified: "github.com/padloc/padloc/"
  name "Padloc"
  desc "Modern password manager"
  homepage "https://padloc.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Padloc.app"

  zap trash: [
    "~/Library/Application Support/Caches/padloc-updater",
    "~/Library/Application Support/Padloc",
  ]
end

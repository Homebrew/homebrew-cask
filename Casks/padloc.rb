cask "padloc" do
  version "4.0.0"
  sha256 "b1d2bb585b07133289b4de2a5cba61569af65b47664f39cf200e461179a1ee99"

  url "https://github.com/padloc/padloc/releases/download/v#{version}/Padloc-#{version}.dmg",
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

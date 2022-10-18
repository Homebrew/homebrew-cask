cask "padloc" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "02d56d5afb49f274ddb9ba2f29364312e2c592cb55a69105d1bc5dafb594ae2c",
         intel: "317f3df2719493615780b31312749aad1fbfc6ed90e40bb546604a6a896755be"

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

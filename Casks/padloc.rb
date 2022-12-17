cask "padloc" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "1220695a3ddc63f5a4f6c602db78a07d903de1b8270faa1cf30e651acf059777",
         intel: "2021b84b68d50553140f7f5ca47c747f56adbc0fa44c015d0eb55d0e7fcb10ba"

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

cask "padloc" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0"
  sha256 arm:   "0b20d0941d2c54a3201269954e92662444fef14baf06c2bd8410df9eb50158fb",
         intel: "fcc1e0dac20d2b95eef4343186ecfff7429754632be4a3a7c953432ffebceb91"

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

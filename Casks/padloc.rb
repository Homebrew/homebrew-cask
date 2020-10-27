cask "padloc" do
  version "3.1.2"
  sha256 "c87aa25e1947bff68b92ef6b44efaa9f10cd06d6270d0d6cac58bd67226d719e"

  # github.com/padloc/padloc/ was verified as official when first introduced to the cask
  url "https://github.com/padloc/padloc/releases/download/v#{version}/Padloc-#{version}.dmg"
  appcast "https://github.com/padloc/padloc/releases.atom"
  name "Padloc"
  desc "Modern password manager"
  homepage "https://padloc.app/"

  app "Padloc.app"

  zap trash: [
    "~/Library/Application Support/Caches/padloc-updater",
    "~/Library/Application Support/Padloc",
  ]
end

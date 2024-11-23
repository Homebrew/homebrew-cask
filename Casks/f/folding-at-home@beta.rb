cask "folding-at-home@beta" do
  version "8.4.9"
  sha256 "e7df52b7aeb56dde4ec377787678e2a16fcb2c893bdb93389f4e5e63f1213c15"

  url "https://download.foldingathome.org/releases/beta/fah-client/macos-12-universal/release/fah-client_#{version}_universal.pkg"
  name "Folding@home Client Beta"
  desc "Protein folding simulation for scientific research"
  homepage "https://foldingathome.org/"

  livecheck do
    url "https://download.foldingathome.org/releases/beta/fah-client/macos-12-universal/release/"
    regex(/href=.*?fah[._-]?client[._-]v?(\d+(?:\.\d+)*)(_universal)?\.pkg/i)
  end

  conflicts_with cask: "folding-at-home"
  depends_on macos: ">= :high_sierra"

  pkg "fah-client_#{version}_universal.pkg"

  uninstall launchctl: "org.foldingathome.fahclient",
            pkgutil:   "org.foldingathome.fahclient.pkg"

  zap trash: "/Library/Application Support/FAHClient"
end

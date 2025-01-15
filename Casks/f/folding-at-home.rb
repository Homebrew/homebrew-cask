cask "folding-at-home" do
  version "8.4.9"
  sha256 "e7df52b7aeb56dde4ec377787678e2a16fcb2c893bdb93389f4e5e63f1213c15"

  url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/fah-client_#{version}_universal.pkg"
  name "Folding@home"
  desc "Graphical interface control for Folding"
  homepage "https://foldingathome.org/"

  livecheck do
    url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/"
    regex(/href=.*?fah[._-]?client[._-]v?(\d+(?:\.\d+)*)(_universal)?\.pkg/i)
  end

  conflicts_with cask: "folding-at-home@beta"
  depends_on macos: ">= :high_sierra"

  pkg "fah-client_#{version}_universal.pkg"

  uninstall launchctl: "org.foldingathome.fahclient",
            quit:      [
              "org.foldingathome.fahcontrol",
              "org.foldingathome.fahviewer",
            ],
            pkgutil:   "org.foldingathome.*"

  zap trash: "/Library/Application Support/FAHClient"
end

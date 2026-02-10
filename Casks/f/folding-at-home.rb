cask "folding-at-home" do
  version "8.5.5"
  sha256 "f2771965e92c3653f44d1b8aa0533f612f6f41436f74121043ec6f0684615971"

  url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/fah-client_#{version}_universal.pkg"
  name "Folding@home"
  desc "Graphical interface control for Folding"
  homepage "https://foldingathome.org/"

  livecheck do
    url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/"
    regex(/href=.*?fah[._-]?client[._-]v?(\d+(?:\.\d+)*)(_universal)?\.pkg/i)
  end

  conflicts_with cask: "folding-at-home@beta"

  pkg "fah-client_#{version}_universal.pkg"

  uninstall launchctl: "org.foldingathome.fahclient",
            quit:      [
              "org.foldingathome.fahcontrol",
              "org.foldingathome.fahviewer",
            ],
            pkgutil:   "org.foldingathome.*"

  zap trash: "/Library/Application Support/FAHClient"
end

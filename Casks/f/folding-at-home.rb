cask "folding-at-home" do
  version "8.3.18"
  sha256 "8aed0c5c6db94175eaede4d5d570c7768c8ea44b5a9af10483da553934069d1e"

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

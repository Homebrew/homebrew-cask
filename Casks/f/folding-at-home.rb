cask "folding-at-home" do
  version "8.5.6"
  sha256 "ed1ac610285280cb6636200e869b73ddd8f6241c00b9f3f3a4fa9730fbb75a48"

  url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/fah-client_#{version}_universal.pkg"
  name "Folding@home"
  desc "Graphical interface control for Folding"
  homepage "https://foldingathome.org/"

  livecheck do
    url "https://download.foldingathome.org/releases/public/fah-client/macos-12-universal/release/"
    regex(/href=.*?fah[._-]?client[._-]v?(\d+(?:\.\d+)*)(_universal)?\.pkg/i)
  end

  conflicts_with cask: "folding-at-home@beta"
  depends_on :macos

  pkg "fah-client_#{version}_universal.pkg"

  uninstall launchctl: "org.foldingathome.fahclient",
            quit:      [
              "org.foldingathome.fahcontrol",
              "org.foldingathome.fahviewer",
            ],
            pkgutil:   "org.foldingathome.*"

  zap trash: "/Library/Application Support/FAHClient"
end

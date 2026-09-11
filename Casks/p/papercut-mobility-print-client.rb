cask "papercut-mobility-print-client" do
  version "1.0.660"
  sha256 "e7dd410dd6e9fc40253b325955587ae7c4a522e80aa1fa10a8129b651b27253e"

  url "https://cdn.papercut.com/web/products/mobility-print/installers/client/macos-cloud/mobility-print-client-installer-#{version}.dmg"
  name "PaperCut Mobility Print Client"
  desc "Client for printing to PaperCut Mobility Print queues"
  homepage "https://www.papercut.com/products/free-software/mobility-print/"

  livecheck do
    url "https://www.papercut.com/api/product/mobility-print/latest/client/macos-cloud/"
    strategy :header_match
  end

  depends_on macos: :monterey

  pkg "PaperCut Mobility Print Client.pkg"

  uninstall script: {
    executable: "/Applications/PaperCut Mobility Print Client/Uninstall.command",
    args:       ["-y"],
    sudo:       true,
  }

  zap trash: "~/Library/Application Support/PaperCutMobilityPrintClient"

  caveats do
    requires_rosetta
  end
end

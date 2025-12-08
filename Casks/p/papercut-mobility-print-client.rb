cask "papercut-mobility-print-client" do
  version "1.0.422"
  sha256 "7967fec555afe1bb4c4c5003908da56537539a40c837ed54316740a86885404d"

  url "https://cdn.papercut.com/web/products/mobility-print/installers/client/macos-cloud/mobility-print-client-installer-#{version}.dmg"
  name "PaperCut Mobility Print Client"
  desc "Client for printing to PaperCut Mobility Print queues"
  homepage "https://www.papercut.com/products/free-software/mobility-print/"

  livecheck do
    url "https://www.papercut.com/api/product/mobility-print/latest/client/macos-cloud/"
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

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

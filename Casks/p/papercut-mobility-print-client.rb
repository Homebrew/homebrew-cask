cask "papercut-mobility-print-client" do
  version "1.0.676"
  sha256 "d6c4eb45d4be0fa4fae03b0e5029871d6d5ec32a51001682d3a03807abe75b03"

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

cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.37"

  if Hardware::CPU.intel?
    sha256 "5426fbcd4d33244df6d61ea4eac2fcd4941d162013a3e1e51b1997dad55d4a4a"
  else
    sha256 "ff1417572712f1d5940da670332291fe911ab4ee25e8832216fff25f1f72cadd"
  end

  url "https://www.calmlywriter.com/releases/#{arch}/Calmly%20Writer-#{version}.pkg"
  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end

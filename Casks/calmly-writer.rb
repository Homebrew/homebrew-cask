cask "calmly-writer" do
  version "2.0.30"

  if Hardware::CPU.intel?
    sha256 "0639641c962f4660481f3346f938e5d349563ba33bbdbc9419f31548fff993a3"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "e8ecbbc5d78a8509c5945508b5e0c3b54dff6e0897bb3b868c9033bb771e86bc"

    url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  end

  name "Calmly Writer"
  desc "Simple word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
    strategy :header_match
  end

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end

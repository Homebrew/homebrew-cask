cask "calmly-writer" do
  version "2.0.31"

  if Hardware::CPU.intel?
    sha256 "527634f134e1d148b313a6a20ce5c147c0990e94f77951a8273bfb010d413524"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "3c04a03e12b87d8d3c35efa516cfb572e6a467a7e541549c5981bb9f0b145ab3"

    url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
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

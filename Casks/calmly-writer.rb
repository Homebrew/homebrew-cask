cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.35"

  if Hardware::CPU.intel?
    sha256 "93f0671535951fcf9c62fe922280b8a1161df2b837cb193ce5d28056f5c751c8"
  else
    sha256 "bc517bcf86072f057fc46ae8364bb3bc33dd5bed40431548f8c8cd5c5741b032"
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

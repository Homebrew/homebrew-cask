cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.39"

  if Hardware::CPU.intel?
    sha256 "a92f12b0f06eefc23306f723c732ca3959d909e33a47493ec53170c2ed327eb3"
  else
    sha256 "af1896bb242d341004e9aacc578acadd2412f888238687de9610fdaf95a792aa"
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

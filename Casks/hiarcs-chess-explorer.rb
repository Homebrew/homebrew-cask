cask "hiarcs-chess-explorer" do
  version "1.11.1"
  sha256 "6f188f9c9041ed5667f0398e7b2a9b00d998bd6c77e9391163895bbd746f49ee"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name "(Deep) HIARCS Chess Explorer"
  desc "Chess database, analysis and game playing program"
  homepage "https://www.hiarcs.com/mac-chess-explorer.htm"

  livecheck do
    url "https://www.hiarcs.com/mac-chess-explorer-download.htm"
    regex(%r{href=.*?/HIARCS-Chess-Explorer-Installer[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"
end

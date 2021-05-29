cask "hiarcs-chess-explorer" do
  version "1.10.1"
  sha256 "0032c0306dedc5cdc839cc4cda87fc2d7518b0cb2989d2040e1a929c63e600a2"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name "(Deep) HIARCS Chess Explorer"
  desc "Chess database, analysis and game playing program"
  homepage "https://www.hiarcs.com/mac-chess-explorer.htm"

  livecheck do
    url "https://www.hiarcs.com/mac-chess-explorer-download.htm"
    strategy :page_match
    regex(%r{href=.*?/HIARCS-Chess-Explorer-Installer-v?(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"
end

cask "hiarcs-chess-explorer" do
  version "1.13"
  sha256 "7b34bead03bb9f90ac56f54cb5b728af146025c3271b1a07d07dbcf5ffcbeeb3"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name "(Deep) HIARCS Chess Explorer"
  desc "Chess database, analysis and game playing program"
  homepage "https://www.hiarcs.com/mac-chess-explorer.html"

  livecheck do
    url "https://www.hiarcs.com/mac-chess-explorer-download.html"
    regex(%r{href=.*?/HIARCS-Chess-Explorer-Installer[._-]v?(\d+(?:\.\d+)+[a-z]?)\.pkg}i)
  end

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"

  zap trash: "~/Library/Preferences/com.hiarcs.Chess Explorer.plist",
      rmdir: "~/Documents/HIARCS Chess"
end

cask "hiarcs-chess-explorer" do
  version "1.12.2"
  sha256 "a77ed22e80ef8b85c65e7f74e72876b12b42525b1ae45bcdce656e3f40b1418f"

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

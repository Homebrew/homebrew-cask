cask "hiarcs-chess-explorer" do
  version "1.9.5"
  sha256 "806d3407b0e2487695ce8744cfb72b9bda68d5e8aa25b946627f880f7ff4d693"

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

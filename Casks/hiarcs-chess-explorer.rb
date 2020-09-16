cask "hiarcs-chess-explorer" do
  version "1.9.4a"
  sha256 "5dbeb42d597d93f24c89690f7d1a7a32bff9e8dfe38ec4ba396b4e3140c68db0"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  appcast "https://www.hiarcs.com/hce/mac-v120.htm"
  name "(Deep) HIARCS Chess Explorer"
  homepage "https://www.hiarcs.com/mac-chess-explorer.htm"

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"
end

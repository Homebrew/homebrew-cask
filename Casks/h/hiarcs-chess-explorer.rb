cask "hiarcs-chess-explorer" do
  version "1.14"
  sha256 "f8cd33777c1dbecbdf6dfaeb6be896a1a844c9737b49b670ff724ccd2ee8efad"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name "(Deep) HIARCS Chess Explorer"
  desc "Chess database, analysis and game playing program"
  homepage "https://www.hiarcs.com/mac-chess-explorer.html"

  livecheck do
    url "https://www.hiarcs.com/mac-chess-explorer-download.html"
    regex(%r{href=.*?/HIARCS-Chess-Explorer-Installer[._-]v?(\d+(?:\.\d+)+[a-z]?)\.pkg}i)
  end

  depends_on :macos

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"

  zap trash: "~/Library/Preferences/com.hiarcs.Chess Explorer.plist",
      rmdir: "~/Documents/HIARCS Chess"
end

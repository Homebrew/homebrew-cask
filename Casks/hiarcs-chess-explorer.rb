cask "hiarcs-chess-explorer" do
  version "1.12.1"
  sha256 "d5b7e06bbc7ef59e99a09858ab241553ebed829406f4fdc7b139f6e064e9edc9"

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

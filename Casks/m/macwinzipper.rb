cask "macwinzipper" do
  version "2.7.2"
  sha256 "c033ac0ccc79babfada6ea2902e5181d339c3bb793bc98e3203f90e626b62d38"

  url "https://tida.co.jp/files/MacWinZipper-#{version}.dmg"
  name "MacWinZipper"
  desc "Zip archiver"
  homepage "https://tida.co.jp/macwinzipper"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MacWinZipper[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "MacWinZipper.app"

  zap trash: [
    "~/Library/Caches/bz.tida.MacWinZipper",
    "~/Library/HTTPStorages/bz.tida.MacWinZipper",
    "~/Library/Preferences/bz.tida.MacWinZipper.plist",
    "~/Library/Saved Application State/bz.tida.MacWinZipper.savedState",
  ]
end

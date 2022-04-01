cask "macwinzipper" do
  version "2.7"
  sha256 "37ff612125d80acf39a873e087a301c524708bb0c4af64be55a335555af23d62"

  url "https://tida.co.jp/files/MacWinZipper-#{version}.dmg"
  name "MacWinZipper"
  desc "Zip archiver"
  homepage "https://tida.co.jp/macwinzipper"

  livecheck do
    url "https://tida.co.jp/macwinzipper"
    regex(%r{href=.*?/MacWinZipper-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "MacWinZipper.app"
end

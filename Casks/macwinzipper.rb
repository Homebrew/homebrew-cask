cask "macwinzipper" do
  version "2.7.1"
  sha256 "b17b6d8338fe6658aa2f9db5566ed8cbc15a936e0e8f883b22cc7c3e561bb18b"

  url "https://tida.co.jp/files/MacWinZipper-#{version}.dmg"
  name "MacWinZipper"
  desc "Zip archiver"
  homepage "https://tida.co.jp/macwinzipper"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MacWinZipper[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "MacWinZipper.app"
end

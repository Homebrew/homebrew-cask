cask "picgo" do
  version "2.2.2"
  sha256 "49eb462ed3563bff862111c3b3ec49f2c3198536b2cf69b5fc468d2cc33b8aae"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url "https://github.com/Molunerfinn/PicGo/releases"
    strategy :page_match
    regex(%r{href=.*?/v?(\d+(?:\.\d+)*)/PicGo-(?:\d+(?:\.\d+)*)\.dmg}i)
  end

  app "PicGo.app"
end

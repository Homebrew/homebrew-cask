cask "shupapan" do
  version "5.9.8.0"
  sha256 "4464dc71d88bf36d9c3cefce0f6ed1b65bd4736105dda41a9286921a2396dc8b"

  url "http://sunsky3s.s41.xrea.com/files/Shupapan_v#{version.no_dots}.zip"
  name "Shupapan"
  homepage "http://sunsky3s.s41.xrea.com/shupapan/"

  livecheck do
    url "http://sunsky3s.s41.xrea.com/shupapan/download/index.html"
    strategy :page_match
    regex(%r{href=.*?/Shupapan_v(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Shupapan.app"
end

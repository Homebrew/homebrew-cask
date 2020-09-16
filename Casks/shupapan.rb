cask "shupapan" do
  version "5.9.8.0"
  sha256 "4464dc71d88bf36d9c3cefce0f6ed1b65bd4736105dda41a9286921a2396dc8b"

  url "http://sunsky3s.s41.xrea.com/files/Shupapan_v#{version.no_dots}.zip"
  appcast "http://sunsky3s.s41.xrea.com/shupapan/download/index.html"
  name "Shupapan"
  homepage "http://sunsky3s.s41.xrea.com/shupapan/"

  app "Shupapan.app"
end

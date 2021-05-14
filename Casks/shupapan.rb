cask "shupapan" do
  version "5.9.8.0"
  sha256 "4464dc71d88bf36d9c3cefce0f6ed1b65bd4736105dda41a9286921a2396dc8b"

  url "http://sunsky3s.s41.xrea.com/files/Shupapan_v#{version.no_dots}.zip"
  name "Shupapan"
  homepage "http://sunsky3s.s41.xrea.com/shupapan/"

  livecheck do
    url "http://sunsky3s.s41.xrea.com/shupapan/download/index.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Shupapan_v(\d+)(\d+)(\d+)(\d+)\.zip}i)
      "#{match[1]}.#{match[2]}.#{match[3]}.#{match[4]}"
    end
  end

  app "Shupapan.app"
end

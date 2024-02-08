cask "shupapan" do
  version "5.9.8.0"
  sha256 "4464dc71d88bf36d9c3cefce0f6ed1b65bd4736105dda41a9286921a2396dc8b"

  url "http://sunsky3s.s41.xrea.com/files/Shupapan_v#{version.no_dots}.zip"
  name "Shupapan"
  homepage "http://sunsky3s.s41.xrea.com/shupapan/"

  livecheck do
    url "http://sunsky3s.s41.xrea.com/shupapan/download/index.html"
    regex(%r{href=.*?/Shupapan_v(\d+)(\d+)(\d+)(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}.#{match[3]}"
      end
    end
  end

  app "Shupapan.app"
end

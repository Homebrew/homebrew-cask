cask "clock-bar" do
  version "1.0,1801968"
  sha256 "88d1ee551f2edbe25e12098dbdbb2edc5f29e21cd52095e5ea275667a4cbffd1"

  url "https://github.com/nihalsharma/Clock-Bar/files/#{version.csv.second}/Clock.Bar.app.zip"
  name "Clock Bar"
  desc "Macbook | Clock, right on the touch bar"
  homepage "https://github.com/nihalsharma/Clock-Bar/"

  livecheck do
    url "https://github.com/nihalsharma/Clock-Bar/releases/latest"
    strategy :page_match do |page|
      v = page[%r{href=.*?/tag/(\d+(?:\.\d+)+)}i, 1]
      id = page[%r{href=.*?/(\d+)/Clock\.Bar\.app\.zip}i, 1]
      "#{v},#{id}"
    end
  end

  app "Clock Bar.app"
end

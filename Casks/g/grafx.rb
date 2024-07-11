cask "grafx" do
  version "2.8.3104,67"
  sha256 "c637e21fcdbd5f3ee77e12c3d637b21f22cceedc2d7082f18e874685f9346cf6"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.csv.second}"
  name "GrafX2"
  desc "256 colour painting program"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  livecheck do
    url "https://pulkomandy.tk/projects/GrafX2/downloads"
    regex(%r{href=.*?/downloads/(\d+)[\s'">]+Grafx2\.app-x86_64-sdl2-v?(\d+(?:\.\d+)+)\.zip}im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Grafx#{version.major}.app"

  caveats do
    requires_rosetta
  end
end

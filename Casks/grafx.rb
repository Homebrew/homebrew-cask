cask "grafx" do
  version "2.8.3104,67"
  sha256 "c637e21fcdbd5f3ee77e12c3d637b21f22cceedc2d7082f18e874685f9346cf6"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.csv.second}"
  name "GrafX2"
  desc "256 color painting program"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  livecheck do
    url "https://pulkomandy.tk/projects/GrafX2/downloads"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/downloads/(\d+)[\s'">]+Grafx2\.app-x86_64-sdl2-v?(\d+(?:\.\d+)+)\.zip}im)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "Grafx#{version.major}.app"
end

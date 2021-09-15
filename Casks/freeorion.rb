cask "freeorion" do
  version "0.4.10.2,2021-08-01:f663dad"
  sha256 "d86d019ba80662f868a2d79bad378957234b79d50feaf351b2181da1d5e52c26"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma.before_colon}.#{version.after_colon}_MacOSX_10.9.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url "https://github.com/freeorion/freeorion/releases/latest"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/FreeOrion_v(\d+(?:\.\d+)*)_(\d+(?:-\d+)*)\.([0-9a-f]+)_MacOSX_(?:\d+(?:\.\d+)*)\.dmg}i,
      )
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  app "FreeOrion.app"
end

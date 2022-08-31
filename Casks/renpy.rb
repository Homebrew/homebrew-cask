cask "renpy" do
  version "8.0.3"
  sha256 "79b62ebc24a7f2c8328eb2834c1d47bccafffe4e9c3a9fdfa79fd2d34bba6e03"

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name "Ren'Py"
  desc "Visual novel engine in Python"
  homepage "https://www.renpy.org/"

  livecheck do
    url "https://www.renpy.org/latest.html"
    regex(/href=.*?renpy[._-]v?(\d+(?:\.\d+)+)[._-]sdk\.dmg/i)
  end

  suite "renpy-#{version}-sdk"
end

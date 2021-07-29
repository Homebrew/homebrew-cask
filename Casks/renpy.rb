cask "renpy" do
  version "7.4.7"
  sha256 "032a8c6a0a3e7b2a5c48a1c77640ca614c94e6c1e4980812fb742c107fe773d8"

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

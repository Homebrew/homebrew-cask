cask "renpy" do
  version "7.3.5"
  sha256 "3d6a46450be9bde378b9df43dc734550a511356081969f464af7a190f60761f9"

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name "Ren'Py"
  homepage "https://www.renpy.org/"

  suite "renpy-#{version}-sdk"
end

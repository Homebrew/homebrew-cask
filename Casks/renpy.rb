cask "renpy" do
  version "8.0.3"
  sha256 "29a4fb79f37fdb68ac889ed3939788a715130c451b969d9dbc06d276e79f7d8f"

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

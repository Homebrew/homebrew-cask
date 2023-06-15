cask "renpy" do
  version "8.1.1"
  sha256 "6944ffff49b37f703c2257c23ca28cfab5d2a41944dd171f676c7385ba18b0f6"

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name "Ren'Py"
  desc "Visual novel engine in Python"
  homepage "https://www.renpy.org/"

  livecheck do
    url "https://www.renpy.org/latest.html"
    regex(/href=.*?renpy[._-]v?(\d+(?:\.\d+)+)[._-]sdk\.dmg/i)
  end

  suite "renpy-#{version}-sdk"

  zap trash: [
    "~/Library/RenPy",
    "~/Library/Saved Application State/org.renpy.sdk.savedState",
  ]
end

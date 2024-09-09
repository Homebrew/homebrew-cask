cask "renpy" do
  version "8.3.2"
  sha256 "9ebed8f02044846f7a28a59369f48edf32a8a18debcda8dc7b24b7a4f8b483c3"

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

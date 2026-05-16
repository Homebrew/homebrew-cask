cask "renpy" do
  version "8.5.3"
  sha256 "ff57648f9c04f27e381c48af6d8e3ee3cdec296bed4d3831f47f09b0a71b505e"

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name "Ren'Py"
  desc "Visual novel engine in Python"
  homepage "https://www.renpy.org/"

  livecheck do
    url "https://www.renpy.org/latest.html"
    regex(/href=.*?renpy[._-]v?(\d+(?:\.\d+)+)[._-]sdk\.dmg/i)
  end

  depends_on :macos

  suite "renpy-#{version}-sdk"

  zap trash: [
    "~/Library/RenPy",
    "~/Library/Saved Application State/org.renpy.sdk.savedState",
  ]
end

cask "renpy" do
  version "7.4.4"
  sha256 "b06491573cb59d2fd0c511c550ddb82b22a78a0ef34680370f280d47ff9683a6"

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name "Ren'Py"
  desc "Visual novel engine in Python"
  homepage "https://www.renpy.org/"

  suite "renpy-#{version}-sdk"
end

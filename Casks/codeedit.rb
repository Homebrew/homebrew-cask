cask "codeedit" do
  version "0.0.1-alpha.25"
  sha256 "b4c05d73faacc6f70d4db1e06205653e855692455b016e4955ba27355611ba7f"

  url "https://github.com/CodeEditApp/CodeEdit/releases/download/#{version}/CodeEdit-8e438ba.dmg"
  name "codeedit"
  desc "Code editor"
  homepage "https://www.codeedit.app/"

  app "CodeEdit.app"
end

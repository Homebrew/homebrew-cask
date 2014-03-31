class Smartgithg < Cask
  url "http://www.syntevo.com/download/smartgithg/smartgithg-macosx-5_0_8.dmg"
  homepage "http://www.syntevo.com"
  version "5.0.8"
  sha256 "3c445ada002d44bb07d1f5c3a4d3a96576d0f971b0b7e5ef6bf38054e1059b10"
  link "SmartGitHg 5.app"
  binary "SmartGitHg 5.app/Contents/MacOS/SmartGit"
  caveats do
    files_in_usr_local
  end
end

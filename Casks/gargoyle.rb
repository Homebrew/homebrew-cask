cask "gargoyle" do
  version "2019.1"
  sha256 "239cd26ba6063a302c6cd12d8241cff0f2837f31ce89f9dc2718e4dcd4cfecc7"

  url "https://github.com/garglk/garglk/releases/download/#{version}/gargoyle-#{version}-mac-nota.dmg"
  appcast "https://github.com/garglk/garglk/releases.atom"
  name "Gargoyle"
  desc "Cross-platform IO layer for an interactive fiction player"
  homepage "https://github.com/garglk/garglk"

  app "Gargoyle.app"
end

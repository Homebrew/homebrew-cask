cask "gargoyle" do
  version "2019.1"
  sha256 "239cd26ba6063a302c6cd12d8241cff0f2837f31ce89f9dc2718e4dcd4cfecc7"

  url "https://github.com/garglk/garglk/releases/download/#{version}/gargoyle-#{version}-mac-nota.dmg"
  name "Gargoyle"
  desc "IO layer for interactive fiction players"
  homepage "https://github.com/garglk/garglk"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/garglk/garglk/releases"
    strategy :page_match
    regex(%r{href=.*?/gargoyle-(\d+(?:\.\d+)*)-mac-nota\.dmg}i)
  end

  app "Gargoyle.app"
end

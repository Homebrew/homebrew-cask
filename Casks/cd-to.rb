cask "cd-to" do
  if MacOS.version <= :big_sur
    version "3.1"
    sha256 "2871b5324210a04eb13b27aa69ab572215a6ac11a33ca96de8e8526b39f77113"
  else
    version "3.1.3"
    sha256 "821cf3b1f4a0af0d89e71317a5a3271b89e569adf84c9b609d6f159d643c568b"
  end

  url "https://github.com/jbtule/cdto/releases/download/v#{version}/cdto_#{version.dots_to_underscores}.zip"
  name "cd to"
  desc "Finder Toolbar app to open the current directory in the Terminal"
  homepage "https://github.com/jbtule/cdto"

  depends_on macos: ">= :mojave"

  app "cd to.app"

  caveats <<~EOS
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd to.app" onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys.

    To use, just click on the new button and instantly opens a new Terminal.app window.
  EOS
end

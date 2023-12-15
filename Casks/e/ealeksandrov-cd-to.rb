cask "ealeksandrov-cd-to" do
  version "2.8.0"
  sha256 "bcc450c23da12a2e3b82ad60ca3698b0464ee96b11cc077348d26ad1b2439600"

  url "https://github.com/ealeksandrov/cdto/releases/download/#{version.dots_to_underscores}/cd_to_#{version.major_minor.dots_to_underscores}.zip"
  name "cd_to"
  desc "Finder Toolbar app to open the current directory in the Terminal"
  homepage "https://github.com/ealeksandrov/cdto"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[._]\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.map { |tag| tag[regex, 1]&.tr("_", ".") }.compact
    end
  end

  app "cd_to_#{version.major_minor.dots_to_underscores}/terminal/cd_to.app"

  caveats <<~EOS
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd_to.app" onto the Finder toolbar while holding down the command(⌘)
    and option(⌥) keys.

    To use, just click on the new button and instantly opens a new Terminal.app
    window.

    Only "cd to.app" for Terminal.app has been added to the Applications folder.
    The iterm and x11_term versions are also staged.
  EOS
end

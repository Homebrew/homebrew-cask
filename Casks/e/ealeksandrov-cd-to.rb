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
      tags.filter_map { |tag| tag[regex, 1]&.tr("_", ".") }
    end
  end

  app "cd_to_#{version.major_minor.dots_to_underscores}/terminal/cd_to.app"

  caveats do
    requires_rosetta
  end
end

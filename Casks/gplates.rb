cask "gplates" do
  version "2.2.0"
  sha256 "a4658d7dd7e123c53d847c7b98e91d3f9cf222beb0dadaea6a4868eddcf5d85a"

  # downloads.sourceforge.net/gplates/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gplates/#{version.major_minor}/GPlates-#{version}-Darwin-x86_64.dmg"
  appcast "https://sourceforge.net/projects/gplates/rss?path=/",
          must_contain: version.major_minor
  name "GPlates"
  homepage "https://www.gplates.org/"

  app "GPlates-#{version}/GPlates.app"
end

cask 'gplates' do
  version '2.2.0'
  sha256 'a4658d7dd7e123c53d847c7b98e91d3f9cf222beb0dadaea6a4868eddcf5d85a'

  # sourceforge.net/projects/gplates was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/gplates/files/gplates/#{version.major_minor}/GPlates-#{version}-Darwin-x86_64.dmg/download"
  name 'GPlates'
  homepage 'https://www.gplates.org/'

  depends_on macos: '>= :mavericks'

  app "GPlates-#{version}/GPlates.app"
end

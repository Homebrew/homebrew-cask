cask 'grisbi' do
  version '1.0.0'
  sha256 'c7a84e8737468e3c1dc08dec5a34330158c767b3ef5a64716d6ec3a0b2c879c2'

  # http://downloads.sourceforge.net/project/grisbi
  url "http://downloads.sourceforge.net/project/grisbi/grisbi%20stable/#{version.major_minor}.x/Grisbi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/grisbi/rss?path=/grisbi%20stable',
          checkpoint: '24cc262a48a94fc07c09f056bf7a5cdb8a6711b62b39d5927c7dc2a0769828a1'
  name 'Grisbi'
  homepage 'http://www.grisbi.org/'
  license :oss

  app 'Grisbi.app'
end

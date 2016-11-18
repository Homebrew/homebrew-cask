cask 'hydrogen' do
  version '0.9.7,rc1'
  sha256 'daeaa3e7a6fc5ee61a4c59116c90104d2393fd71c8782f136b48bed58d6082db'

  # downloads.sourceforge.net/projects/ was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/hydrogen/files/Hydrogen/#{version.before_comma}%20Binaries/hydrogen-#{version.before_comma}-#{version.after_comma}.dmg/download"
  name 'Hydrogen'
  homepage 'https://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end

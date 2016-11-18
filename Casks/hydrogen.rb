cask 'hydrogen' do
  version '0.9.7,rc1'
  sha256 '606a33ad624beecc849f8d651b267ee9cea28dbf7e3aea951b9ad4b48c73b0b3'

  # downloads.sourceforge.net/projects/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/projects/hydrogen/files/Hydrogen/#{version.before_comma}%20Binaries/hydrogen-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'Hydrogen'
  homepage 'https://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end

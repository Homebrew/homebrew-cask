cask 'hydrogen' do
  version '0.9.7-rc1'
  sha256 'daeaa3e7a6fc5ee61a4c59116c90104d2393fd71c8782f136b48bed58d6082db'

  # downloads.sourceforge.net/hydrogen was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hydrogen/hydrogen-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen',
          checkpoint: 'c472fb7218f40ece440782a1eff2da0fe1a677ebe05686185593380a1018d6cd'
  name 'Hydrogen'
  homepage 'http://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end

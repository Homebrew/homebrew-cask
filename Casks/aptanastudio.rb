cask 'aptanastudio' do
  version '3.7.0.201807190852'
  sha256 '73b403c9801945e3bbe4f00da5fc6a252c419f0bf88dc88638d8861e0d53dc0d'

  # github.com/aptana/studio3 was verified as official when first introduced to the cask
  url "https://github.com/aptana/studio3/releases/download/#{version}/Aptana_Studio_#{version.major}.dmg"
  appcast "https://github.com/aptana/studio#{version.major}/releases.atom"
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'

  app 'AptanaStudio.app'
end

cask 'phon' do
  version '3.0.0'
  sha256 'cb51103e1f87ae42208aa05973afb00a24f6f500f1aacaf9753eec33b557d4c4'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app "Phon #{version.major_minor}.app"
end

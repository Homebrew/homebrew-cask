cask 'dawn' do
  version '2.11.0,20181121-0820'
  sha256 'f717757e75b2a3e706ed292d749e29c2e4231812e6683d37379fd07975f568e9'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'https://dawnsci.org/'

  app 'Dawn.app'
end

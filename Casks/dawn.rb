cask 'dawn' do
  version '2.8.0,20180409-1550'
  sha256 '739abe44ec6798a7a27180d6bfeca043ade5e2a81c9e61f28e24ed4e46dd98dc'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'http://dawnsci.org/'

  app 'Dawn.app'
end

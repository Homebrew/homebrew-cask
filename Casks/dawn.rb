cask 'dawn' do
  version '2.10.0,20180904-1516'
  sha256 '1e04d9fbe30787a9c304b2137238e46f25fa900f5efac3b07efd3ac532375895'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'https://dawnsci.org/'

  app 'Dawn.app'
end

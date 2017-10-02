cask 'dawn' do
  version '2.6.0,20170904-0753'
  sha256 '4440940dbc1485faeb99386ab4e77927a4c98f1969f9ee8c577969d535b5c931'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'http://dawnsci.org/'

  app 'Dawn.app'
end

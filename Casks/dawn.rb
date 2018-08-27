cask 'dawn' do
  version '2.9.0,20180618-1117'
  sha256 'f63ef87a04e755ec4fadbda279326e55981e873528a93d4d40b4b3d382354c7c'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'https://dawnsci.org/'

  app 'Dawn.app'
end

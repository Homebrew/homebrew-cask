cask 'dawn' do
  version '2.7.0,20171114-1119'
  sha256 '89add67d0f72378ac7ce5638f7090cf42e6e35afd0de1431e85b68c64db59cfc'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'http://dawnsci.org/'

  app 'Dawn.app'
end

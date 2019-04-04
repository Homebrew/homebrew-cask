cask 'dawn' do
  version '2.13.0,20190401-0954'
  sha256 'bdbac9fab2517443d90a01d0018f36bb2c355b8c56b5efdcfeb5571147b16b91'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'https://dawnsci.org/'

  app 'Dawn.app'
end

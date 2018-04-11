cask 'dawn' do
  version '2.8.0,20180411-0936'
  sha256 '75ad8e7b7f6bf1076c33ce9885e61a8dd2bc3f582ae980846e23897525e8894e'

  # alfred.diamond.ac.uk/DawnDiamond was verified as official when first introduced to the cask
  url "https://alfred.diamond.ac.uk/DawnDiamond/#{version.major_minor}/downloads/builds-release/DawnDiamond-#{version.before_comma}.v#{version.after_comma}-mac64.dmg"
  name 'Dawn'
  homepage 'http://dawnsci.org/'

  app 'Dawn.app'
end

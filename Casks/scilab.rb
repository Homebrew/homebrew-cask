cask 'scilab' do
  version '6.0.0'
  sha256 '87ec97f04f64e1fe8133e639a784fc02ca0802adf6c7c2c98c6d8febf59cc40e'

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-x86_64.dmg"
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  app "scilab-#{version}.app"
end

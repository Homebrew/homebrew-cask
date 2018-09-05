cask 'restool' do
  version '0.3.0'
  sha256 'a5b85a8483006adcf91bf9ebdc1d21084ae0616a56d582ece1335db4d8786746'

  # github.com/Nikola-K/RESTool was verified as official when first introduced to the cask
  url "https://github.com/Nikola-K/RESTool/releases/download/v#{version}/RESTool_#{version}_osx.zip"
  appcast 'https://github.com/Nikola-K/RESTool/releases.atom'
  name 'RESTool'
  homepage 'https://nikola-k.github.io/RESTool/'

  app 'RESTool.app'
end

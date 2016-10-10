cask 'restool' do
  version '0.3.0'
  sha256 'a5b85a8483006adcf91bf9ebdc1d21084ae0616a56d582ece1335db4d8786746'

  # github.com/Nikola-K/RESTool was verified as official when first introduced to the cask
  url "https://github.com/Nikola-K/RESTool/releases/download/v#{version}/RESTool_#{version}_osx.zip"
  appcast 'https://github.com/Nikola-K/RESTool/releases.atom',
          checkpoint: 'a6287fdb9b482425d972a87911fcbe7a80bc6097b15ccca065f9a3daf60d74e7'
  name 'RESTool'
  homepage 'https://nikola-k.github.io/RESTool/'

  app 'RESTool.app'
end

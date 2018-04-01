cask 'functionflip' do
  version '2.2.4'
  sha256 '429a07deef5767534dee2d99ab147242c41ef860c48d0dbf0c68f2687fbe9db4'

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  appcast 'http://kevingessner.com/update/functionflip/',
          checkpoint: '22c2879918c8d1c9cc3a21cc0851ea40baad61dd91464702ca50ced0839b4824'
  name 'FunctionFlip'
  homepage 'http://kevingessner.com/software/functionflip/'

  # FIXME: `accessibility_access true` only works on the first
  #        `app` stanza, but should ideally take a bundle id
  #
  # accessibility_access 'com.kevingessner.FFHelperApp'

  prefpane 'FunctionFlip.prefPane'
end

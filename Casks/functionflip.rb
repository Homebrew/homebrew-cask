cask 'functionflip' do
  version '2.2.3'
  sha256 '2c0613e173522b5baff5e321ab1ae551c8a4acc223a0901ef423671baded92af'

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  appcast 'http://kevingessner.com/update/functionflip/',
          checkpoint: 'd76f71bf62983625bbd95fca40197cda9a03c5e25b32bac39b49ec758a7bb362'
  name 'FunctionFlip'
  homepage 'http://kevingessner.com/software/functionflip/'

  # FIXME: `accessibility_access true` only works on the first
  #        `app` stanza, but should ideally take a bundle id
  #
  # accessibility_access 'com.kevingessner.FFHelperApp'

  prefpane 'FunctionFlip.prefPane'
end

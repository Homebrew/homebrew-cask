cask 'functionflip' do
  version '2.2.3'
  sha256 '2c0613e173522b5baff5e321ab1ae551c8a4acc223a0901ef423671baded92af'

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  appcast 'http://kevingessner.com/update/functionflip/',
          checkpoint: '4d66ce434c5ffb80f286227e918f77e14a9bc80e7bcc445353c02d484c33b699'
  name 'FunctionFlip'
  homepage 'http://kevingessner.com/software/functionflip/'

  # FIXME: `accessibility_access true` only works on the first
  #        `app` stanza, but should ideally take a bundle id
  #
  # accessibility_access 'com.kevingessner.FFHelperApp'

  prefpane 'FunctionFlip.prefPane'
end

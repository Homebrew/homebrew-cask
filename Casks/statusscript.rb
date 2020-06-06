cask 'statusscript' do
  version 'beta1'
  sha256 :no_check

  url 'https://github.com/ravitripathi/StatusScript/releases/download/beta1/StatusScript.zip'
  appcast 'https://github.com/ravitripathi/StatusScript/releases.atom'
  name 'StatusScript'
  homepage 'https://github.com/ravitripathi/StatusScript'

  app 'StatusScript.app'
end

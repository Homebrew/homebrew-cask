cask 'swiftybeaver' do
  version :latest
  sha256 :no_check

  url 'https://cdn.swiftybeaver.com/SBMac-Beta.zip'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end

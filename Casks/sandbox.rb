cask 'sandbox' do
  version :latest
  sha256 :no_check

  url 'http://www.mikey-san.net/sandbox/Sandbox.dmg'
  name 'Sandbox'
  homepage 'http://www.mikey-san.net/sandbox/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sandbox.app'
end

cask :v1 => 'sandbox' do
  version :latest
  sha256 :no_check

  url 'http://www.mikey-san.net/sandbox/Sandbox.dmg'
  homepage 'http://www.mikey-san.net/sandbox/'
  license :unknown    # todo: improve this machine-generated value

  app 'Sandbox.app'
end

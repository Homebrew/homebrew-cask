cask :v1 => 'idisplay' do
  version '2.3.10'
  sha256 '6d87e0566e2e2693d89c4fdb1cddcfed9db6316f6f7b2bada24104ea18b996ae'

  url "http://www.shape.ag/freedownload/iDisplay/iDisplayFull_#{version.gsub('.', '_')}.dmg"
  homepage 'http://getidisplay.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'iDisplay.app'
end

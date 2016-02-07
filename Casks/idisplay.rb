cask 'idisplay' do
  if MacOS.release <= :leopard
    version '1.1.12'
    sha256 'ea0f9dd2c488762169c0bab2218ee628b6eff658a814dfca583e4563b99b7c6c'
    # shape.ag is the official download host per the vendor homepage
    url 'http://www.shape.ag/freedownload/iDisplay/iDisplay.dmg'
  else
    version '2.3.10'
    sha256 '6d87e0566e2e2693d89c4fdb1cddcfed9db6316f6f7b2bada24104ea18b996ae'
    # shape.ag is the official download host per the vendor homepage
    url "http://www.shape.ag/freedownload/iDisplay/iDisplayFull_#{version.gsub('.', '_')}.dmg"
  end

  name 'iDisplay'
  homepage 'http://getidisplay.com/'
  license :gratis

  app 'iDisplay.app'
end

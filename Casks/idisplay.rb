cask 'idisplay' do
  version '2.3.10'
  sha256 '6d87e0566e2e2693d89c4fdb1cddcfed9db6316f6f7b2bada24104ea18b996ae'

  # shape.ag was verified as official when first introduced to the cask
  url "https://www.shape.ag/freedownload/iDisplay/iDisplayFull_#{version.dots_to_underscores}.dmg"
  name 'iDisplay'
  homepage 'https://getidisplay.com/'

  app 'iDisplay.app'
end

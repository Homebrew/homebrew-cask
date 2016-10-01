cask 'exponent-xde' do
  version :latest
  sha256 :no_check

  # exponentjs.com was verified as official when first introduced to the cask
  url 'https://xde-updates.exponentjs.com/download/mac'
  name 'Exponent Development Environment (XDE)'
  homepage 'https://getexponent.com/'
  license :mit

  app 'Exponent XDE.app'
end

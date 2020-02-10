cask 'mate-translate' do
  version '6.1.4'
  sha256 'b2fe0ae8353b496b43dda07c21f89a7c9604d72d922213894e31efb5904a2365'

  # gikken.co/mate was verified as official when first introduced to the cask
  url 'https://gikken.co/mate/MateTranslate.zip'
  appcast 'https://gikken.co/mate/appcast.xml'
  name 'Mate Translate'
  homepage 'https://twopeoplesoftware.com/mate'

  app 'Mate Translate.app'
end

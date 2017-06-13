cask 'hiss' do
  version '0.3'
  sha256 'c6a1181602e481068d8eeda05d26bee5ac8435ee752da63786eaaa742df16580'

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml',
          checkpoint: '7d8ce78aa2f09d164f423b8f4c070840387c5ef1cffab072b27d559925e228fc'
  name 'Hiss'
  homepage 'http://collect3.com.au/hiss/'

  app 'Hiss.app'
end

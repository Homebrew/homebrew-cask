cask 'chronicle' do
  version '6.7.0'
  sha256 '736db13159ed4082b4a0440ee20831bfa4b1a650f5064b92089a7d426ecfdb7c'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '68834e0e6b44ee74eff8a8c524e83c5ebc5c992456a4a9415be8cfbf7ead06c4'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end

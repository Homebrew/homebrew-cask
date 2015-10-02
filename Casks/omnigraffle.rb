cask :v1 => 'omnigraffle' do
  if MacOS.release <= :snow_leopard
    version '5.4.4'
    sha256 '7bcc64093f46bd4808b1a4cb86cf90c0380a5c5ffffd55ce8f742712818558df'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniGraffle-#{version}.dmg"
  elsif MacOS.release <= :mavericks
    version '6.0.5'
    sha256 'a2eff19909d1ba38a4f01b2beecbde2f31f4af43d30e06d2c6921ae8880f85bc'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.8/OmniGraffle-#{version}.dmg"
  else
    version '6.4'
    sha256 '747b421b2b7849d12624eddec47d53772fb862b5c176d4504e2db3fe1ce73130'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  end

  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'
  license :commercial

  app 'OmniGraffle.app'

  zap :delete => '~/Library/Application Support/The Omni Group/OmniGraffle'
end

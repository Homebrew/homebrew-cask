cask 'omnigraffle' do
  if MacOS.release <= :snow_leopard
    version '5.4.4'
    sha256 '7bcc64093f46bd4808b1a4cb86cf90c0380a5c5ffffd55ce8f742712818558df'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniGraffle-#{version}.dmg"
  elsif MacOS.release <= :mavericks
    version '6.0.5'
    sha256 'a2eff19909d1ba38a4f01b2beecbde2f31f4af43d30e06d2c6921ae8880f85bc'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.8/OmniGraffle-#{version}.dmg"
  else
    version '6.5.3'
    sha256 '6b5b8d28c6e753e0d69eb6c79b2b068ee0d628b8e75c0d3cabf2d1ef43798359'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  end

  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'
  license :commercial

  app 'OmniGraffle.app'

  zap delete: '~/Library/Application Support/The Omni Group/OmniGraffle'
end

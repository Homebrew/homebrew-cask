cask 'omnigraffle' do
  if MacOS.version <= :snow_leopard
    version '5.4.4'
    sha256 '7bcc64093f46bd4808b1a4cb86cf90c0380a5c5ffffd55ce8f742712818558df'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniGraffle-#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '6.0.5'
    sha256 'a2eff19909d1ba38a4f01b2beecbde2f31f4af43d30e06d2c6921ae8880f85bc'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.8/OmniGraffle-#{version}.dmg"
  elsif MacOS.version <= :yosemite
    version '6.6.1'
    sha256 '7671d46ccd0b53a5917b0ccba5971fe1f1d7990b2d636f25c941b11b03c6e23c'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  else
    version '7.0.3'
    sha256 '1da76e9f4b7a6b77ad3de914c8c3aa01a2ecd95bc0c52d71e55566c699ff2a3b'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"
  end

  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'

  zap delete: '~/Library/Application Support/The Omni Group/OmniGraffle'
end

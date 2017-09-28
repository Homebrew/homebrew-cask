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
    version '7.4.3'
    sha256 'ee8cdee22219573a18c5121da336eb8dfe221414a2c7e37324d3746cbbb402fc'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"
  end

  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end

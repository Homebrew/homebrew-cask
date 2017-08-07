cask 'pacifist' do
  if MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.13'
    sha256 'df4778ede2b9664bda6153fc13b0f52cfa6e6e6ce2367c54f945b8d176367736'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: '2d0b41688b27880f5046d3ad99fe0f242b1595d1dc027747026ddb600a387adc'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end

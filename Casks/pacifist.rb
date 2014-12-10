cask :v1 => 'pacifist' do
  version :latest
  sha256 :no_check

  url 'https://www.charlessoft.com/cgi-bin/pacifist_download.cgi?type=dmg'
  appcast 'http://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi'
  homepage 'http://www.charlessoft.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Pacifist.app'
end

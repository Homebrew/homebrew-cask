cask 'querious' do
  version '1.1.4'
  sha256 'c8553c7a81c777201cd4c155329ae0682edcac2d6fa8e21c2949da7bd7023ad2'

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://store.araelium.com/updates/querious',
          :checkpoint => 'appcast is probably incorrect, as a non-200 (OK) HTTP response code was returned (302)'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end

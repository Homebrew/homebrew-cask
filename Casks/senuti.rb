cask 'senuti' do
  version '1.3.4'
  sha256 '93280dec0b69d09e297f5d58005b5f00fa506ddce9249e1f710fbae2b32ef057'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          checkpoint: 'd7e54d6b330e2fe6233898038cbe4896dd0e04d3a4b8b655d878276dd158395b'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'

  app 'Senuti.app'
end

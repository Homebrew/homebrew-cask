cask 'senuti' do
  version '1.3.4'
  sha256 '93280dec0b69d09e297f5d58005b5f00fa506ddce9249e1f710fbae2b32ef057'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          checkpoint: '76b70a6c0e38d31be0c64337b425ebb2e7bd953b8e10c7287820413091740e74'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'

  app 'Senuti.app'
end

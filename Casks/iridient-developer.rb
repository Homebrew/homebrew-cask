cask 'iridient-developer' do
  version '3.1.4'
  sha256 'd5f4a465b88d2a5d9801569824a7729e0bafce7b888a2db6de640aec497d6fbe'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'http://www.iridientdigital.com/products/rawdeveloper_history.html',
          checkpoint: 'b163015f87abb1873f74f747e4e78703eaf8317cc44c9b659c5a66da1f2688f2'
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end

cask 'navicat-data-modeler' do
  version '2.1.13'
  sha256 '397b8c0bed804826aa82d38869901bf6d91511c59ed125c2f7935327ee557b22'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  depends_on macos: '>= :lion'

  app 'Navicat Data Modeler.app'
end

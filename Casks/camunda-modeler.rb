cask 'camunda-modeler' do
  version '3.3.2'
  sha256 '47f10cadcda492519a92c03992597de4b1af5aeef14701ca7a95441591d1501e'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

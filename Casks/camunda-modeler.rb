cask 'camunda-modeler' do
  version '2.2.4'
  sha256 '9936bd54c0c15f7574fcaa8e58df5e2154831384608efb38c009c3e6e20db219'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

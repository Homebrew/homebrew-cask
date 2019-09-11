cask 'camunda-modeler' do
  version '3.3.4'
  sha256 '2e39e5986aa644b238be8da8af1b369279bc0952822c961d9c32e140ef99ec7b'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

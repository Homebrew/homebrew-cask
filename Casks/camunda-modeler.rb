cask 'camunda-modeler' do
  version '3.2.3'
  sha256 '96e97a4acf311f9b2b50ab495f61d3cf673ee45dbe6a0a885ae71ce03bcdcb39'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

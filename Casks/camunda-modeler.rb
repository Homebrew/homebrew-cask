cask 'camunda-modeler' do
  version '2.0.1'
  sha256 'a0b8bf577b777e3472bb3a4e28f4f1f0901103527e37e4055d71c6639bcc8215'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

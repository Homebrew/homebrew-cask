cask 'camunda-modeler' do
  version '3.7.1'
  sha256 '4e9fcd1db124954133271ddbe5d6e3fcfbcfdb496d781e52d9280fb9faefae75'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

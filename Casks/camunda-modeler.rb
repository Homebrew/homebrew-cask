cask 'camunda-modeler' do
  version '1.11.3'
  sha256 '4eadc23e7ad822acb7c1ece018c0bf6b23c1bd5d6e1bc9355249cae44b06d508'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

cask 'camunda-modeler' do
  version '1.15.1'
  sha256 '300d79e7a3d7a8a34839c82c604892637423d97a33aff9fbeffca13564c59cbb'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

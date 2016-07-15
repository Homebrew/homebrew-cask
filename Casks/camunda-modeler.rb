cask 'camunda-modeler' do
  version '1.2.0'
  sha256 :no_check

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'camunda-modeler'
  homepage 'https://camunda.org'
  license :mit

  app 'camunda-modeler/Camunda Modeler.app'
end

cask 'camunda-modeler' do
  version '1.3.2'
  sha256 '4c2e1d79252dbd787b3521230f18575d5431a4d362a9a8bfa1433584c4588d49'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org'

  app 'camunda-modeler/Camunda Modeler.app'
end

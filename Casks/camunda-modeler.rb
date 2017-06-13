cask 'camunda-modeler' do
  version '1.8.2'
  sha256 'e5cf41e4007994e3997d6f6561d437e4965a6ff20e7046b97fa2e5fabcff621b'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

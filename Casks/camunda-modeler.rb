cask 'camunda-modeler' do
  version '1.15.0'
  sha256 'a8584337402b7ec6ece0c170d5810bc51fc49fcfcaf8ae79cc43f40b95c0bd8f'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

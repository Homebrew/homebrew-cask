cask 'camunda-modeler' do
  version '1.5.0'
  sha256 'cbd86a03aa32d2b6cbd0e23e8b99f212ef7c44db5ef73589d9e58552e11e8978'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

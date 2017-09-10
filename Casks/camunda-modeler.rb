cask 'camunda-modeler' do
  version '1.10.0'
  sha256 '5c50060f14a3c4ac6e099749cf2929c7042d151a8b156cfc65ea88e90d04b23f'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

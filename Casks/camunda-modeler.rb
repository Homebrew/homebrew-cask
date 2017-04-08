cask 'camunda-modeler' do
  version '1.7.1'
  sha256 '3af32dc042179412753e2dff36c6348bec7e8998ce968487973cb85d592628ae'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

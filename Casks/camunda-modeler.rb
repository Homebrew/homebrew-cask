cask 'camunda-modeler' do
  version '1.2.2'
  sha256 '4f8ba728f4ed9525d366ae5b61218d8dfadc1ba1c534f6ff48355d61968c6258'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org'
  license :mit

  app 'camunda-modeler/Camunda Modeler.app'
end

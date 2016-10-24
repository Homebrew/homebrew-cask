cask 'camunda-modeler' do
  version '1.4.0'
  sha256 '7b7c46e198283fa10377f774cc4e93c6f843f91a8f9b0a44c718b4a4626ba4a1'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org'

  app 'camunda-modeler/Camunda Modeler.app'
end

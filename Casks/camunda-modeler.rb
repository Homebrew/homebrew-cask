cask 'camunda-modeler' do
  version '1.11.0'
  sha256 'c567eab9ca71c5529edbca0d38b0acc63eed16c500d495de395950fbe82097a7'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

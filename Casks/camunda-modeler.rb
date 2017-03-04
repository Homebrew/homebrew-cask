cask 'camunda-modeler' do
  version '1.6.0'
  sha256 'f10e9f898c05e42195d27227353c251cb5e91efa96068479e95fcd9f2fc56e0c'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

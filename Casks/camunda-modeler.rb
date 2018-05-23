cask 'camunda-modeler' do
  version '1.14.0'
  sha256 '46d9ada1672eb3314afc6a286f0cf9b993b3cf0d0c9c713138a074fb4b0f93d8'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

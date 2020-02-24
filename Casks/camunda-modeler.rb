cask 'camunda-modeler' do
  version '3.6.0'
  sha256 '88bd1397b5d56de015cb4253991e0dd05a7d630331be92ba5043aef1e3330a10'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

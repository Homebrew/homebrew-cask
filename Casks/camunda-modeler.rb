cask 'camunda-modeler' do
  version '1.12.0'
  sha256 'a9132353db256e0cd1cac2f360170ca85a8ff3717ef58a99abb18ae90fa12155'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

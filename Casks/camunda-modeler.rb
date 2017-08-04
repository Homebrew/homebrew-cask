cask 'camunda-modeler' do
  version '1.9.0'
  sha256 'be267f149afa9a17d220ac24831fffe2f7aaa61aa7d5fa9c997c403deebfb017'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

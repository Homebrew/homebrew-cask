cask 'camunda-modeler' do
  version '1.16.1'
  sha256 '069e791b9ecc709cdb6de59ec627d264d689f244989393ab32a9c1a08cdf829e'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end

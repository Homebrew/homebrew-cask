cask 'camunda-modeler' do
  version '1.2.0'
  sha256 'f4d8e6a8738b167cb952476720ae42082c310fe6828798b265fcd5f699259c5c'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org'
  license :mit

  app 'camunda-modeler/Camunda Modeler.app'
end

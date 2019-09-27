cask 'camunda-modeler' do
  version '3.3.5'
  sha256 'fa9a3748aff32be1e8da007867d6e96c3943584eea8372e6054eba5c28ba5717'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

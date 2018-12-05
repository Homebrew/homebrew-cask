cask 'camunda-modeler' do
  version '2.2.3'
  sha256 '0f2160d8aef5c075613880b70c6a65911319d8a577423b4a88e39ac205e675f9'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

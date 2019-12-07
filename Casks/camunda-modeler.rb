cask 'camunda-modeler' do
  version '3.5.0'
  sha256 'b7a1eeb415a2288bb34cde43b46a95e7072cb43ae4504f006e7674b65821fd2c'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

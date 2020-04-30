cask 'camunda-modeler' do
  version '3.7.3'
  sha256 'c0f6648e71d052a35aa95dca8acdc77efa75297c2f02739a2492c62f3e390c7c'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end

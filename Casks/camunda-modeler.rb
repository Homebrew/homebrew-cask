cask "camunda-modeler" do
  version "4.4.0"
  sha256 "8e2fa4c17c3c20d71655218d32a136534cb7dc66798be241a4c69c0fb241d47d"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast "https://camunda.com/download/modeler/"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  app "Camunda Modeler.app"
end

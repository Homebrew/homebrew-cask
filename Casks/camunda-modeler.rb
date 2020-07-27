cask "camunda-modeler" do
  version "4.1.1"
  sha256 "890d625f1e76018d0fbc5f307ef03fb0ea98d9db7dbff66694dc1ab6649d097b"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast "https://camunda.com/download/modeler/"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  app "Camunda Modeler.app"
end

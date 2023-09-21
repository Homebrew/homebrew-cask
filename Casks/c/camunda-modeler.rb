cask "camunda-modeler" do
  version "5.15.1"
  sha256 "93afdb1be8a0a445f5037f4e2ba4f5447495eb19fbb6aa9ee0614ae6da2ab942"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.org/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]?modeler[._-]?v?(\d+(?:\.\d+)+)[._-]?mac\.zip}i)
  end

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

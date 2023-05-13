cask "camunda-modeler" do
  version "5.11.0"
  sha256 "f1d292a3651dd17414e3650db1027438967c45381983d821abe22f38ad344e63"

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

cask "camunda-modeler" do
  version "5.21.0"
  sha256 "0eecd6435f074e45c1e8c524717004f0941ec102de04f3ce22e1249485f73f47"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]?modeler[._-]?v?(\d+(?:\.\d+)+)[._-]?mac\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

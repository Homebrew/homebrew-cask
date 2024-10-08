cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.28.0"
  sha256 arm:   "ee07120e21ae3921245fc3ebb96d8464f6915e5be4182ccd86ea1facdefbd6b3",
         intel: "624d7fdbead1ef977c66b2b8e41d7e440cd40f09926cc17adc45b3c48e18e757"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip}i)
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

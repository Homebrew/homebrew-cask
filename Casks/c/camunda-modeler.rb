cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.42.0"
  sha256 arm:   "1ce62421bb6dc02739428770072ae380f2f70c8d69d9743f5f246ad4b5397060",
         intel: "3208f02999e8dae45dc57c10020a2b9e32c922b06444e2b8cc02bc1a2e4a0f1e"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip}i)
  end

  depends_on macos: ">= :monterey"

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

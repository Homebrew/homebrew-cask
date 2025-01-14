cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.31.0"
  sha256 arm:   "81f3208216549ea6f3773bbd7594e09767901f395e1d5a312da6dfa58f0cdd4b",
         intel: "92f81020993b2a3c4cd1a5b4af7001def5c6240937dd2f94c6f6d02649f8ddf8"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip}i)
  end

  depends_on macos: ">= :big_sur"

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.47.0"
  sha256 arm:   "c657fa0d5b6ae7643fd5ed6e223fb91ec88d0b74e118268608d6f0bd1fb59a1b",
         intel: "ba4f80224a2cca56f58e07a2426e7d6f6616648dc26edcd2fd75f204a1e67d28"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip}i)
  end

  depends_on macos: :monterey

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

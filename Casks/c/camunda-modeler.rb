cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.51.1"
  sha256 arm:   "a3e3ad3632f8bab5d3dbb31e06c3301d6f50ab406cae442f0ecb52920b60acf6",
         intel: "48b13e46ccd6cd063a738d914f24c833a725034a5f20ff1be96bbd8b0a0c969a"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.dmg"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg}i)
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

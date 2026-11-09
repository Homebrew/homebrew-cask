cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.52.0"
  sha256 arm:   "9ee3f7b24060466bbd064c40f5539d56cfda42fc0dae1c3151b3e6f457fb62e8",
         intel: "7abf8f0060d8d4db96afb20492374f2d106924b3853658c501be257b87650d77"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.dmg"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]modeler[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :ventura

  app "Camunda Modeler.app"

  zap trash: [
    "~/Library/Application Support/camunda-modeler",
    "~/Library/Logs/Camunda Modeler",
    "~/Library/Preferences/com.camunda.CamundaModeler.plist",
    "~/Library/Saved Application State/com.camunda.CamundaModeler.savedState",
  ]
end

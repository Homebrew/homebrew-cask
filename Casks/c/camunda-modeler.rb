cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.51.0"
  sha256 arm:   "cec0d06c934ddf387a5ab98f48aadb8fd20f0658df776e632824de18aba31326",
         intel: "99062f90c57efbfe1eb205917d3e6050eae5c9648752839b8b471dfeafc5ce1a"

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

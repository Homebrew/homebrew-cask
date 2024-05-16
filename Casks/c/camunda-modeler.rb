cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.23.0"
  sha256 arm:   "04186b258ba1386903a42d968ccf1e5c05762e0f5bc51c0fcd89d3a3c6621341",
         intel: "e73b27c9a3d8800d50d41d8829f5bac8cfb4b5d2cd74e42a74c7b75143c9faaf"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.zip",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.com/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]?modeler[._-]?v?(\d+(?:\.\d+)+)[._-]?mac-#{arch}\.zip}i)
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

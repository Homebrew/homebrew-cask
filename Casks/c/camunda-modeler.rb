cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.50.1"
  sha256 arm:   "aa6c69b1b5f562b1119da065cf65090c0af8de0eaab3f4f57f2cc3612d72a679",
         intel: "ddf046f4dd06c7c49c3b7d579019097ce18e3a2b47a736b48c55c496f99cf9ce"

  url "https://downloads.camunda.cloud/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac-#{arch}.dmg",
      verified: "downloads.camunda.cloud/release/camunda-modeler/"
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

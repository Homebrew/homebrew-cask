cask "camunda-modeler" do
  arch arm: "arm64", intel: "x64"

  version "5.48.0"
  sha256 arm:   "434ae64874410302068d820d63541bb2d2e7be8702f46c46bdf65e2bd2dc4e96",
         intel: "5de828d4d4ef114f451ddc79952c29333a53604b0b221d46520829ab934e00fa"

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

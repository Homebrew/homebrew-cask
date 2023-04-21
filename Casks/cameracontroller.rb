cask "cameracontroller" do
  version "1.4.0"
  sha256 "8a46dcb20a8d8898d4c47540f636e990ca3e3401c0ff062043efe5cc33d39dda"

  url "https://github.com/Itaybre/CameraController/releases/download/v#{version}/CameraController.zip"
  name "CameraController"
  desc "Control USB Cameras from an app"
  homepage "https://github.com/Itaybre/CameraController/"

  depends_on macos: ">= :catalina"

  app "CameraController.app"

  zap trash: [
    "~/Library/Application Scripts/com.itaysoft.CameraController",
    "~/Library/Application Scripts/com.itaysoft.CameraController.Helper",
    "~/Library/Application Support/CameraController",
    "~/Library/Containers/CameraController",
    "~/Library/Preferences/com.itaysoft.CameraController.plist",
  ]
end

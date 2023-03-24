cask "roboform" do
  version "9.4.2"
  sha256 "160e36403024e163ffb5414550a6d06102ea686448132573f6b78db899860dd9"

  url "https://www.roboform.com/dist/roboform-mac-v#{version.major}.dmg"
  name "RoboForm"
  desc "Password manager and form filler application"
  homepage "https://www.roboform.com/"

  livecheck do
    url "https://www.roboform.com/news-mac"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RoboForm.app"

  zap trash: [
    "~/Library/Application Scripts/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Application Support/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Application Support/com.SiberSystems.RoboForm",
    "~/Library/Application Support/RoboForm",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm",
    "~/Library/Caches/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.SiberSystems.RoboForm",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm",
    "~/Library/Containers/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Group Containers/*.com.SiberSystems.RoboForm",
    "~/Library/Saved Application State/com.SiberSystems.RoboForm.savedState",
  ]
end

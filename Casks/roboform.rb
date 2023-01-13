cask "roboform" do
  version "9.3.9"
  sha256 "75e05ba1c2f21f87c919ade0532ca28988c2c6a3c9cd46b35184cb3ef73a3c84"

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

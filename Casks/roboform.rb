cask "roboform" do
  version "9.1.2"
  sha256 "ed3dc4845a784ce8247dc1cc242b41884bcf58319ba7659da24b3765e23e7a5e"

  url "https://www.roboform.com/dist/roboform-mac-v#{version.major}.dmg"
  name "RoboForm"
  desc "Password manager and form filler application"
  homepage "https://www.roboform.com/"

  livecheck do
    url "https://www.roboform.com/news-mac"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "RoboForm.app"

  zap trash: [
    "~/Library/Application Scripts/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Application Support/RoboForm",
    "~/Library/Application Support/com.SiberSystems.RoboForm",
    "~/Library/Application Support/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.SiberSystems.RoboForm",
    "~/Library/Caches/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm",
    "~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm.RoboFormService",
    "~/Library/Containers/com.SiberSystems.RoboForm.safari-companion*",
    "~/Library/Group Containers/*.com.SiberSystems.RoboForm",
    "~/Library/Saved Application State/com.SiberSystems.RoboForm.savedState",
  ]
end

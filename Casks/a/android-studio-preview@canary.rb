cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2024.3.2.1"
  sha256 arm:   "cc28383464f95d09ee770a70283ed8c39868aa287a44e811d018cf4a1085e3b6",
         intel: "7f4e88f73391e60948a92f6d2d2b06132f34339bf5bead5c068e90fd96c0e08c"

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/install/"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Android Studio Preview.app", target: "Android Studio Preview Canary.app"
  binary "#{appdir}/Android Studio Preview Canary.app/Contents/MacOS/studio", target: "studio-canary"

  zap trash: [
        "~/.android",
        "~/Library/Android/sdk",
        "~/Library/Application Support/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Caches/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Logs/Google/AndroidStudioPreview#{version.major_minor}",
        "~/Library/Preferences/com.android.Emulator.plist",
        "~/Library/Preferences/com.google.android.studio-EAP.plist",
        "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
      ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end

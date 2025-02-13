cask "android-studio-preview@canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2024.3.2.5"
  sha256 arm:   "0611cd37badd38cd3edc59b35d08118f8526b30f14726cfeb73d78de6979c3f6",
         intel: "2df66659708246d4dd4c30127025a6f634d6f023430beb5ae05567bb3ab72e47"

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

cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "37.0.0"
  sha256 arm:          "094a1395683c509fd4d48667da0d8b5ef4d42b2abfcd29f2e8149e2f989357c7",
         x86_64:       "094a1395683c509fd4d48667da0d8b5ef4d42b2abfcd29f2e8149e2f989357c7",
         x86_64_linux: "198ae156ab285fa555987219af237b31102fefe8b9d2bc274708a8d4f2865a07",
         arm64_linux:  "198ae156ab285fa555987219af237b31102fefe8b9d2bc274708a8d4f2865a07"

  url "https://dl.google.com/android/repository/platform-tools_r#{version}-#{os}.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/tools/releases/platform-tools"

  livecheck do
    url :homepage
    regex(/data-text=["']?[^"' >]*?v?(\d+(?:\.\d+)+)["'> (]/i)
  end

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/make_f2fs"
  binary "#{staged_path}/platform-tools/make_f2fs_casefold"
  binary "#{staged_path}/platform-tools/mke2fs"

  # No zap stanza required
end

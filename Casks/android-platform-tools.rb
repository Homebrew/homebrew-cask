cask "android-platform-tools" do
  version "31.0.2,42b081e1e068bb936179551684cdcb30315e245c"
  sha256 "fd3415495a016d0b25678380a6c48dc909c27e9ab3a7783e4bd572e6fa3a8a9c"

  url "https://dl.google.com/android/repository/#{version.after_comma}.platform-tools_r#{version.before_comma}-darwin.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/studio/releases/platform-tools"

  livecheck do
    url "https://dl.google.com/android/repository/platform-tools-latest-darwin.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/([0-9a-f]{40,}).platform-tools_r([.0-9]+)-darwin})
      "#{match[2]},#{match[1]}"
    end
  end

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/e2fsdroid"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/make_f2fs"
  binary "#{staged_path}/platform-tools/make_f2fs_casefold"
  binary "#{staged_path}/platform-tools/mke2fs"
  binary "#{staged_path}/platform-tools/sload_f2fs"
end

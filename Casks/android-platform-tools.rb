cask "android-platform-tools" do
  version "31.0.1,d027ce0f9f214a4bd575a73786b44d8ccf7e7516"
  sha256 "09e7c56bb1f9f5adf5f4cc6a868d9a46429e2de7ee93879b34c4ee8211e7d401"

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

cask "android-platform-tools" do
  version "31.0.0,f62237c314a6bb80f574f0812e8109e16d52076d"
  sha256 "572d78cea416c4e563534534bef58acb55113fb277c53cf469d7138d29d41d70"

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

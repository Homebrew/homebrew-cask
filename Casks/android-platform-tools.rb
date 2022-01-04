cask "android-platform-tools" do
  version "31.0.3,e8b2b4cbe47c728c1e54c5f524440b52d4e1a33c"
  sha256 "773c08cfa31cec1bb4568ce5b374366e6310a5ffc21875024604a0f65bc831b1"

  url "https://dl.google.com/android/repository/#{version.csv.second}.platform-tools_r#{version.csv.first}-darwin.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/studio/releases/platform-tools"

  livecheck do
    url "https://dl.google.com/android/repository/platform-tools-latest-darwin.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/([0-9a-f]{40,}).platform-tools_r([.0-9]+)-darwin})
      next if match.blank?

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

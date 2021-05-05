cask "android-commandlinetools" do
  version "7302050"
  sha256 "fda8189832e506a58643c119f02c515a5a85741ae9c040fab41ee6c5ac021311"

  url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip",
      verified: "dl.google.com/android/repository/"
  name "android-cmdline-tools"
  desc "Command-line tools for building and debugging Android apps"
  homepage "https://developer.android.com/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*?/commandlinetools-mac-(\d+)_latest\.zip}i)
  end

  conflicts_with cask:    "android-sdk",
                 formula: "proguard"

  binary "#{staged_path}/cmdline-tools/bin/apkanalyzer"
  binary "#{staged_path}/cmdline-tools/bin/avdmanager"
  binary "#{staged_path}/cmdline-tools/bin/lint"
  binary "#{staged_path}/cmdline-tools/bin/retrace"
  binary "#{staged_path}/cmdline-tools/bin/screenshot2"
  binary "#{staged_path}/cmdline-tools/bin/sdkmanager"
end

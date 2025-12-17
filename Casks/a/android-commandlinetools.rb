cask "android-commandlinetools" do
  os macos: "mac", linux: "linux"

  version "13114758"

  on_macos do
    sha256 "5673201e6f3869f418eeed3b5cb6c4be7401502bd0aae1b12a29d164d647a54e"
  end

  on_linux do
    sha256 "7ec965280a073311c339e571cd5de778b9975026cfcbe79f2b1cdcb1e15317ee"
  end

  url "https://dl.google.com/android/repository/commandlinetools-#{os}-#{version}_latest.zip",
      verified: "dl.google.com/android/repository/"
  name "Android SDK Command-line Tools"
  desc "Command-line tools for building and debugging Android apps"
  homepage "https://developer.android.com/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*?/commandlinetools[._-]#{os}[._-](\d+)[._-]latest\.zip}i)
  end

  android_sdk_root = "#{HOMEBREW_PREFIX}/share/android-commandlinetools"
  android_clt_dir = "#{android_sdk_root}/cmdline-tools/latest"

  binary "#{android_clt_dir}/bin/apkanalyzer"
  binary "#{android_clt_dir}/bin/avdmanager"
  binary "#{android_clt_dir}/bin/lint"
  binary "#{android_clt_dir}/bin/retrace"
  binary "#{android_clt_dir}/bin/screenshot2"
  binary "#{android_clt_dir}/bin/sdkmanager"
  artifact "cmdline-tools", target: android_clt_dir

  zap trash: [
    "~/.android",
    android_sdk_root,
  ]

  caveats do
    depends_on_java
    <<~EOS
      Default Android SDK root is #{android_sdk_root}
    EOS
  end
end

cask "android-commandlinetools" do
  os macos: "mac", linux: "linux"

  version "14742923"

  on_macos do
    sha256 "ed304c5ede3718541e4f978e4ae870a4d853db74af6c16d920588d48523b9dee"
  end

  on_linux do
    sha256 "04453066b540409d975c676d781da1477479dde3761310f1a7eb92a1dfb15af7"
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

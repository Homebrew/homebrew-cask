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
    regex(%r{href=.*?/commandlinetools[._-]mac[._-](\d+)[._-]latest\.zip}i)
  end

  conflicts_with cask:    "android-sdk",
                 formula: "proguard"

  android_sdk_root = HOMEBREW_PREFIX.join("share", "android-commandlinetools")
  android_clt_dir = android_sdk_root.join("cmdline-tools", "latest")

  commands = %w[apkanalyzer avdmanager lint retrace screenshot2 sdkmanager]
  commands.each do |command|
    binary "#{android_clt_dir}/bin/#{command}"
  end

  artifact "cmdline-tools", target: android_clt_dir

  zap trash: android_sdk_root

  caveats do
    depends_on_java
    <<~EOS
      Default Android SDK root is #{android_sdk_root}
    EOS
  end
end

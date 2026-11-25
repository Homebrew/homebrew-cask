cask "android-commandlinetools" do
  arch arm:   on_system_conditional(macos: "_arm64"),
       intel: on_system_conditional(macos: "_x86_64")
  os macos: "mac", linux: "linux"

  version "15859902"
  sha256 arm:          "835b62a26162b229b441d1f6d4680383815a270809eb33522c0d480fa5002c4e",
         intel:        "c5a6378ab5cf7e0d5701921405115befff13e9ff7417fb588389338f8bd050f3",
         arm64_linux:  "4e4c464f145a7512b57d088ac6c278c03c9eea610886b35a5e0804e74eedf583",
         x86_64_linux: "4e4c464f145a7512b57d088ac6c278c03c9eea610886b35a5e0804e74eedf583"

  url "https://dl.google.com/android/repository/commandlinetools-#{os}#{arch}-#{version}_latest.zip"
  name "Android SDK Command-line Tools"
  desc "Command-line tools for building and debugging Android apps"
  homepage "https://developer.android.com/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*?/commandlinetools[._-]#{os}#{arch}[._-](\d+)[._-]latest\.zip}i)
  end

  android_sdk_root = "#{HOMEBREW_PREFIX}/share/android-commandlinetools"
  android_clt_dir = "#{android_sdk_root}/cmdline-tools/latest"

  binary "#{android_clt_dir}/bin/android"
  binary "#{android_clt_dir}/bin/apkanalyzer"
  binary "#{android_clt_dir}/bin/avdmanager"
  binary "#{android_clt_dir}/bin/d8"
  binary "#{android_clt_dir}/bin/lint"
  binary "#{android_clt_dir}/bin/profgen"
  binary "#{android_clt_dir}/bin/r8"
  binary "#{android_clt_dir}/bin/resourceshrinker"
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

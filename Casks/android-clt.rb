cask 'android-clt' do
  version '6200805'
  sha256 '23f0626336a98d70aff7311a73292026af31bc577c6f06b509cd4ad33752313e'

  # dl.google.com/android/repository was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip"
  name 'android-clt'
  homepage 'https://developer.android.com/'

  conflicts_with cask: 'android-sdk'

  binary "#{staged_path}/tools/bin/apkanalyzer"
  binary "#{staged_path}/tools/bin/avdmanager"
  binary "#{staged_path}/tools/bin/lint"
  binary "#{staged_path}/tools/bin/screenshot2"
  binary "#{staged_path}/tools/bin/sdkmanager"

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "#{HOMEBREW_PREFIX}/share/android-clt")
  end

  uninstall_postflight do
    FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/android-clt")
  end

  caveats do
    depends_on_java '8'
    <<~EOS
      You can control android sdk packages via the sdkmanager command.
      You may want to add to your profile:
        'export ANDROID_SDK_ROOT="#{HOMEBREW_PREFIX}/share/android-clt"'
    EOS
  end
end

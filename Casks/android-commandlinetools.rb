cask 'android-commandlinetools' do
  version '6200805'
  sha256 '23f0626336a98d70aff7311a73292026af31bc577c6f06b509cd4ad33752313e'

  # dl.google.com/android/repository was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip"
  appcast 'https://developer.android.com/studio#cmdline-tools'
  name 'android-clt'
  homepage 'https://developer.android.com/studio'

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
end

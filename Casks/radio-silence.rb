cask :v1 => 'radio-silence' do
  version :latest
  sha256 :no_check

  url 'http://radiosilenceapp.com/downloads/Radio_Silence_for_OS_X_10.9_and_later.pkg'
  name 'Radio Silence'
  homepage 'http://radiosilenceapp.com'
  license :commercial

  pkg 'Radio_Silence_for_OS_X_10.9_and_later.pkg'
  # We intentionally unload the kext twice as a workaround
  # See https://github.com/caskroom/homebrew-cask/pull/1802#issuecomment-34171151

  uninstall :early_script => {
              :executable => '/sbin/kextunload',
              :args => ['-b', 'com.radiosilenceapp.nke.filter'],
              :must_succeed => false,
            },
            :quit => 'com.radiosilenceapp.client',
            :kext => 'com.radiosilenceapp.nke.filter',
            :pkgutil => 'com.radiosilenceapp.radioSilence.*',
            :launchctl => [
                            'com.radiosilenceapp.trial',
                            'com.radiosilenceapp.agent',
                            'com.radiosilenceapp.nke'
                          ]

  zap :delete => '~/Library/Application Support/Radio Silence'
end

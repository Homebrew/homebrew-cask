cask 'radio-silence' do
  version '2.1'
  sha256 '64500a1f683ca17b1e7fe2b05f870a871765352472c2f51b158607aa393b26d0'

  url "https://radiosilenceapp.com/downloads/Radio_Silence_#{version}.pkg"
  appcast 'https://radiosilenceapp.com/update',
          checkpoint: 'fc370e4a6397e4b72f6a81c3b840ae1c45376e23d55b258f2f52b01fae037949'
  name 'Radio Silence'
  homepage 'https://radiosilenceapp.com/'

  pkg "Radio_Silence_#{version}.pkg"

  # We intentionally unload the kext twice as a workaround
  # See https://github.com/caskroom/homebrew-cask/pull/1802#issuecomment-34171151

  uninstall early_script: {
                            executable:   '/sbin/kextunload',
                            args:         ['-b', 'com.radiosilenceapp.nke.filter'],
                            must_succeed: false,
                          },
            quit:         'com.radiosilenceapp.client',
            kext:         'com.radiosilenceapp.nke.filter',
            pkgutil:      'com.radiosilenceapp.radioSilence.*',
            launchctl:    [
                            'com.radiosilenceapp.trial',
                            'com.radiosilenceapp.agent',
                            'com.radiosilenceapp.nke',
                          ]

  zap trash: '~/Library/Application Support/Radio Silence'
end

cask 'radio-silence' do
  version '2.2'
  sha256 '657a80c8b2ac76e63ed09f0f332f8bbf42b1fb4cd416dcb37c1797306e19bfe6'

  url "https://radiosilenceapp.com/downloads/Radio_Silence_#{version}.pkg"
  appcast 'https://radiosilenceapp.com/update',
          checkpoint: '5d359c3bfd4bd081b10e8c71b6947f6448ab108be39080d44bf38b947e6d4475'
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

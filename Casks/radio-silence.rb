cask 'radio-silence' do
  version '2.3'
  sha256 '0127f722cb15768392437b917d2beed2cbcab35eeccee2d77c61ac2a5997ebd1'

  url "https://radiosilenceapp.com/downloads/Radio_Silence_#{version}.pkg"
  appcast 'https://radiosilenceapp.com/update',
          checkpoint: 'd3f64a45603b0db6cb97cf04e833f399018d8397203d31c5144c40a470aacbf2'
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

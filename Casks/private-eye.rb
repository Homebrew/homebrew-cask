cask :v1 => 'private-eye' do
  version :latest
  sha256 :no_check

  url 'http://radiosilenceapp.com/downloads/Private%20Eye.pkg'
  homepage 'http://radiosilenceapp.com/private-eye'
  license :oss

  pkg 'Private Eye.pkg'
  # We intentionally unload the kext twice as a workaround
  # See https://github.com/caskroom/homebrew-cask/pull/1802#issuecomment-34171151
  uninstall :early_script => {
              :executable => '/sbin/kextunload',
              :args => ['-b', 'com.radiosilenceapp.nke.PrivateEye'],
              :must_succeed => false,
            },
            :quit => 'com.radiosilenceapp.PrivateEye',
            :kext => 'com.radiosilenceapp.nke.PrivateEye',
            :pkgutil => 'com.radiosilenceapp.privateEye.*'
end

class PrivateEye < Cask
  url 'http://radiosilenceapp.com/downloads/Private%20Eye.pkg'
  homepage 'http://radiosilenceapp.com/private-eye'
  version 'latest'
  no_checksum
  install 'Private Eye.pkg'
  # We have to try unloading the kext twice to work around a bug. See https://github.com/phinze/homebrew-cask/pull/1802#issuecomment-34171151
  uninstall :kext => ['com.radiosilenceapp.nke.PrivateEye', 'com.radiosilenceapp.nke.PrivateEye'], :pkgutil => 'com.radiosilenceapp.privateEye.*'
end

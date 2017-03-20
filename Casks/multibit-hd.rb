cask 'multibit-hd' do
  version '0.5.1'
  sha256 'c79e4e315576db7152a139f2c35aa5b47bc706a3df9669bfddba9bdeb9db4520'

  url "https://multibit.org/releases/multibit-hd/multibit-hd-#{version}/multibit-macos-#{version}-drag-install.dmg"
  name 'MultiBit HD'
  homepage 'https://multibit.org/'
  gpg "#{url}.asc", key_id: '299c423c672f47f4756a6ba4c1972aed79f7c572'

  app 'MultiBit HD.app'

  uninstall quit: 'com.install4j.6925-4794-5772-4956.24'
end

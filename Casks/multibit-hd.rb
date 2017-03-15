cask 'multibit-hd' do
  version '0.4.1'
  sha256 '12d230b723fd8d51fe6ea90a4ecdad25ee3eff6ebec6fc80295c55f54ea3c63a'

  url "https://multibit.org/releases/multibit-hd/multibit-hd-#{version}/multibit-macos-#{version}-drag-install.dmg"
  name 'MultiBit HD'
  homepage 'https://multibit.org/'
  gpg "#{url}.asc", key_id: '299c423c672f47f4756a6ba4c1972aed79f7c572'

  app 'MultiBit HD.app'

  uninstall quit: 'com.install4j.6925-4794-5772-4956.24'
end

cask 'onionshare' do
  version '1.0'
  sha256 '4586f3b2218188475610354f14c95e08b988d6d190eecc3f04258d25ca3543a6'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '72c38373f27461c9533ee32c87c2b13898f368779701213f0e625d51722337f9'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end

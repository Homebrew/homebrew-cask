cask 'onionshare' do
  version '0.9.1'
  sha256 '9721b9f60ab777d1b6a470d33108031814d6a0833909dc695e40c7b3d98279d1'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '5317a163350bbc2c380be9004831eeb12021e8a30a319d6424e3e2776ef0901a'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end

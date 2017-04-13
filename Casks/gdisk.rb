cask 'gdisk' do
  version '1.0.1'
  sha256 '5a13fe14fd8f05ccf7d336ec9b116829712a65afdc72403aeceed20468b1e4b9'

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/gptfdisk/rss',
          checkpoint: '1a3a7679724709689b97aef5bf28909e5407b624fcbd3c67d63af96957eadb3b'
  name 'GPT fdisk'
  homepage 'https://sourceforge.net/projects/gptfdisk/'

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: 'com.rodsbooks.pkg.gdisk'
end

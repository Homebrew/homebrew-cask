cask 'gdisk' do
  version '1.0.1'
  sha256 '5a13fe14fd8f05ccf7d336ec9b116829712a65afdc72403aeceed20468b1e4b9'

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/gptfdisk/rss',
          checkpoint: '8cbd4a8261f6342d94cb53c726a2b33ee5dd8961abb2601dc9e86c0eaeb36f76'
  name 'GPT fdisk'
  homepage 'https://sourceforge.net/projects/gptfdisk/'

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: 'com.rodsbooks.pkg.gdisk'
end

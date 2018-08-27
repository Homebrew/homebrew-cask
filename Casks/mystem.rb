cask 'mystem' do
  version '3.1'
  sha256 '346e576ada01cc7c63414a9d91f6733bd418f496f073d13a4812aec3628e5693'

  # download.cdn.yandex.net/mystem was verified as official when first introduced to the cask
  url "https://download.cdn.yandex.net/mystem/mystem-#{version}-macosx.tar.gz"
  name 'MyStem'
  homepage 'https://tech.yandex.ru/mystem/'

  binary 'mystem'
end

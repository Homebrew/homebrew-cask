cask 'gb-studio' do
  version '1.2.0'
  sha256 '0bdb91223edca531af3af09044975aa100977ce00ca2615c560f42025550a92b'

  # github.com/chrismaltby/gb-studio was verified as official when first introduced to the cask
  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/GB-Studio-Mac-#{version}.zip"
  appcast 'https://github.com/chrismaltby/gb-studio/releases.atom'
  name 'GB Studio'
  homepage 'https://www.gbstudio.dev/'

  app 'GB Studio.app'
end

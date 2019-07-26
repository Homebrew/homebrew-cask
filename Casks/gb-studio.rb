cask 'gb-studio' do
  version '1.1.0'
  sha256 '86ff5ae6a9f8955da7c06e839b480c5e37f06f422375997e0a27063c849e6e65'

  # github.com/chrismaltby/gb-studio was verified as official when first introduced to the cask
  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/GB.Studio-darwin-x64-#{version}.zip"
  appcast 'https://github.com/chrismaltby/gb-studio/releases.atom'
  name 'GB Studio'
  homepage 'https://www.gbstudio.dev/'

  app 'GB Studio.app'
end

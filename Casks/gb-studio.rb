cask 'gb-studio' do
  version '1.0.0'
  sha256 '2906c0f4e9a176820f66932e311de4661660679f224f2ebaf9f86b3faf5004b8'

  # github.com/chrismaltby/gb-studio was verified as official when first introduced to the cask
  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/GB.Studio-darwin-x64-#{version}.zip"
  appcast 'https://github.com/chrismaltby/gb-studio/releases.atom'
  name 'GB Studio'
  homepage 'https://www.gbstudio.dev/'

  app 'GB Studio.app'
end

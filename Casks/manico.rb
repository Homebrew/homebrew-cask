cask 'manico' do
  version '2.7.1,385'
  sha256 'ac5d3601dfd9d8c8845b7d58bdba9673549e8c37a7582079e9d537adc51c3f24'

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  appcast 'https://manico.im/api/release_manager/im.manico.Manico.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  depends_on macos: '>= :sierra'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end

cask 'rclone-browser' do
  version '1.2'
  sha256 '542cd23eea128736999a7e512a9f2ff89be081c688d1581e6c78ab3d3ca118dd'

  archive_name = 'rclone-browser-1.2-a1156a0-macOS'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/mmozeiko/RcloneBrowser/releases/download/#{version}/#{archive_name}.zip"
  name 'Rclone Browser'
  homepage 'https://mmozeiko.github.io/RcloneBrowser/'

  depends_on formula: 'rclone'

  app "#{archive_name}/Rclone Browser.app"

  zap delete: [
                '~/Library/Preferences/Rclone Browser.plist',
                '~/Library/Preferences/com.rclone-browser.rclone-browser.plist',
              ]
end

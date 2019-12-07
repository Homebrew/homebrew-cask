cask 'megahertz-knotes' do
  version '2.1.0'
  sha256 'd2070cfc96cf168db45e3390866950d1eabb5fdf719bfc85ca558cd68dc151fb'

  url "http://cdn.knotesapp.cn/download/%e7%b3%af%e8%af%8d%e7%ac%94%e8%ae%b0-#{version}.dmg"
  appcast "http://knotes#{version.major}-release-cn.s3.amazonaws.com/mac/latest-mac.yml"
  name 'Knotes'
  name '糯词笔记'
  homepage 'http://knotesapp.cn/'

  app '糯词笔记.app'

  zap trash: [
               '~/Library/Application Support/Knotes*',
               '~/Library/Logs/Knotes*',
               '~/Library/Preferences/com.knotesapp.knotes.helper.plist',
             ]
end

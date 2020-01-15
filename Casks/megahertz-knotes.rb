cask 'megahertz-knotes' do
  version '2.2.0'
  sha256 '24cf81de4d27bc7001b06cf86b3933bd25d3a29cab675d907d5bef3ccabca900'

  url "http://cdn.knotesapp.cn/download/%e7%b3%af%e8%af%8d%e7%ac%94%e8%ae%b0-#{version}.dmg"
  appcast "https://knotes#{version.major}-release-cn.s3.amazonaws.com/mac/latest-mac.yml"
  name 'Knotes'
  name '糯词笔记'
  homepage 'https://knotesapp.cn/'

  app '糯词笔记.app'

  zap trash: [
               '~/Library/Application Support/Knotes*',
               '~/Library/Logs/Knotes*',
               '~/Library/Preferences/com.knotesapp.knotes.helper.plist',
             ]
end

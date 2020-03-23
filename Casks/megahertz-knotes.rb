cask 'megahertz-knotes' do
  version '2.2.2'
  sha256 'febed9f148142e814a2014ed9a2fbb112efdbc88837b84c2d1030b26b277d3aa'

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

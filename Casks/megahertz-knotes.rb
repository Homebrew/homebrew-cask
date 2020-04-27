cask 'megahertz-knotes' do
  version '2.3.0'
  sha256 'e8db95db9226e8301fed77b405d24e82eced142f560ee79ed16f84bb9c1a814a'

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

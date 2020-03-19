cask 'megahertz-knotes' do
  version '2.2.1'
  sha256 'c32719d5128800f71cb685c7f846d227f3e01e3a61a9db1f12236ff25b310b35'

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

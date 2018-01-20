cask 'gitee' do
  version '1.0.2.7'
  sha256 '9eec18ba7c2e4458223916bca87d7221c2b38b345a6aae087b5a3a3ab5059299'

  url "https://github.com/Nightonke/Gitee/releases/download/v#{version}/Gitee.zip"
  appcast 'https://github.com/Nightonke/Gitee/releases.atom',
          checkpoint: '9ada4b72963708f30efe244edf6697dd40cba476bbb30a5698610bd9869c7d48'
  name 'Gitee'
  homepage 'https://github.com/Nightonke/Gitee'

  app 'Gitee.app'

  zap trash: [
               '~/Library/Application Support/com.nightonke.VHGithubNotifier',
               '~/Library/Caches/com.nightonke.VHGithubNotifier',
               '~/Library/Cookies/com.nightonke.VHGithubNotifier.binarycookies',
               '~/Library/Preferences/com.nightonke.VHGithubNotifier.plist',
             ]
end

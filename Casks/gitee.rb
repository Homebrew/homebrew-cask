cask 'gitee' do
  version '1.0.2.4'
  sha256 'f70d571e9aa2e455828a0fa05bf63dac589473fb29f8d83d78bc6e1c823967b0'

  url "https://github.com/Nightonke/Gitee/releases/download/v#{version}/Gitee#{version.no_dots}.zip"
  appcast 'https://github.com/Nightonke/Gitee/releases.atom',
          checkpoint: '3e105770946d502430d806f754c9ea9443c4f56f2e27539657a2ae7e77684cce'
  name 'Gitee'
  homepage 'https://github.com/Nightonke/Gitee'

  app "Gitee #{version}.app"

  zap delete: [
                '~/Library/Application Support/com.nightonke.VHGithubNotifier',
                '~/Library/Caches/com.nightonke.VHGithubNotifier',
                '~/Library/Cookies/com.nightonke.VHGithubNotifier.binarycookies',
                '~/Library/Preferences/com.nightonke.VHGithubNotifier.plist',
              ]
end

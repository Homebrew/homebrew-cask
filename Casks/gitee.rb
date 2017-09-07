cask 'gitee' do
  version '1.0.2.4'
  sha256 'f70d571e9aa2e455828a0fa05bf63dac589473fb29f8d83d78bc6e1c823967b0'

  url "https://github.com/Nightonke/Gitee/releases/download/v#{version}/Gitee#{version.no_dots}.zip"
  appcast 'https://github.com/Nightonke/Gitee/releases.atom',
          checkpoint: 'f48264788a072502c7e12091f6f8d4d27fbca12071df0eba0c86fc5fbc910029'
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

cask 'gitee' do
  version '1.0.2.5'
  sha256 '3e5a712f998b10274393a4cb8dddd36f28e8cc95e9f19e06bff1f249c4083bae'

  url "https://github.com/Nightonke/Gitee/releases/download/v#{version}/Gitee.#{version}.zip"
  appcast 'https://github.com/Nightonke/Gitee/releases.atom',
          checkpoint: '80f53f0820bf57a1ffeeb7edca03e05574fa607db5ad13f0948a4a7c944e69cc'
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

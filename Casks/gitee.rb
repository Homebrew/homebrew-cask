cask 'gitee' do
  version '1.0.2.3'
  sha256 'c61e8b43b218052511cde6bd2e74e933b29e039440b6c20e24effdf340f0b397'

  url "https://github.com/Nightonke/Gitee/releases/download/v#{version}/Gitee.#{version}.zip"
  appcast 'https://github.com/Nightonke/Gitee/releases.atom',
          checkpoint: '09287ff4847d4463a65c5ad54e0ee4c66bd1c8240a8c0413c70bc23724e40db2'
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

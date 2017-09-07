cask 'fricas' do
  version '1.2.6'
  sha256 'af34c4d55d80181d8b28902d0f1db51eff7ef69b0d3eb5d910f0a2cff06028bc'

  url "https://downloads.sourceforge.net/fricas/fricas/#{version}/FriCAS-#{version}-x86_64-macos10.6.tbz"
  appcast 'https://sourceforge.net/projects/fricas/rss',
          checkpoint: '91aeb21bfed59d2e6d33efff968e63bde93bed3c04eda7789ac890aef0f51adf'
  name 'FriCAS'
  homepage 'http://fricas.sourceforge.net/'

  depends_on x11: true

  app 'FriCAS.app'
end

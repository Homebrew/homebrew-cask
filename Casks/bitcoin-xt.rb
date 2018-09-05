cask 'bitcoin-xt' do
  version '0.11.0,J'
  sha256 '838534841d6cd2fe72961508805086b48543ba5c1fb01519d0025add33e94a4c'

  # github.com/bitcoinxt/bitcoinxt was verified as official when first introduced to the cask
  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version.major_minor}#{version.after_comma}/bitcoin-xt-#{version.before_comma}-#{version.after_comma}-osx-unsigned.dmg",
      cookies: {
                 'i_follow_redirects' => 'yes',
               }
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom'
  name 'Bitcoin XT'
  homepage 'https://bitcoinxt.software/'

  conflicts_with cask: 'bitcoin-core'

  app 'Bitcoin-XT.app'

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Xt.app", '0755'
  end

  zap trash: [
               '~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist',
             ]
end

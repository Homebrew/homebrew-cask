cask 'bdash' do
  version '1.2.0'
  sha256 '204fa27decbda2cc356617726f5fae6356540b904b32ad47a26a3b7b1b6bc4b9'

  url "https://github.com/bdash-app/bdash/releases/download/#{version}/Bdash-#{version}-macOS.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom',
          checkpoint: '7ad7fa99e2324187649091259bb13ffd43c203a0ad900115eecc2e4ca2b15779'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

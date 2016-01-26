cask 'moneyguru' do
  version '2.9.4'
  sha256 'df9e113239f230d195f93aa51ad081f3aaea4c86df515b18a3eb1c67d66e9530'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.gsub('.', '_')}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          checkpoint: '6c7d3e8845da503bc567d77d31a5feb2e78b1cf99a819fd0d106951d035f98bd'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'
  license :bsd

  app 'moneyGuru.app'
end

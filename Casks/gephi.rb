cask 'gephi' do
  version '0.9.1'
  sha256 'c2a2f5c84f822303a3b314d43bc18f183dfa1d15545050bd8125d32a84e64f94'

  # github.com/gephi/gephi was verified as official when first introduced to the cask
  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom',
          checkpoint: '69dacb6508d264fcd35789495674f909c6166cdae43625b208fed0c854082418'
  name 'Gephi'
  homepage 'https://gephi.org/'

  app 'Gephi.app'
end

cask 'gephi' do
  version '0.9.1'
  sha256 'c2a2f5c84f822303a3b314d43bc18f183dfa1d15545050bd8125d32a84e64f94'

  # github.com/gephi/gephi was verified as official when first introduced to the cask
  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom',
          checkpoint: '1f99988a585f7c98e3a95d775887ad8ccd827865c47047740bb9a5ccfac0da67'
  name 'Gephi'
  homepage 'https://gephi.org/'

  app 'Gephi.app'
end

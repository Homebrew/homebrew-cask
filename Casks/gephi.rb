cask 'gephi' do
  version '0.9.1'
  sha256 'c2a2f5c84f822303a3b314d43bc18f183dfa1d15545050bd8125d32a84e64f94'

  # github.com/gephi/gephi was verified as official when first introduced to the cask
  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg"
  appcast 'https://github.com/gephi/gephi/releases.atom',
          checkpoint: 'd1feebc671a218ea171e3c8c521cc6450e09d556f29a086649c94f4339e6e1e5'
  name 'Gephi'
  homepage 'https://gephi.github.io/'

  app 'Gephi.app'
end

cask 'mobster' do
  version '0.0.47'
  sha256 '1bda2435bc22cc9925f6e1b09f9f5149c8d1a7135b616c4e4a6d067bed901d32'

  url "https://github.com/dillonkearns/mobster/releases/download/v#{version}/Mobster-#{version}.dmg"
  appcast 'https://github.com/dillonkearns/mobster/releases.atom',
          checkpoint: '77bcee9deaaf040bb57776d2fadef7ab2046f6b157f748adf0fd7541e9bd3b95'
  name 'Mobster'
  homepage 'https://github.com/dillonkearns/mobster/'

  app 'Mobster.app'
end

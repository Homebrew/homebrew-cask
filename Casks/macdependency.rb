cask 'macdependency' do
  version '1.1.0'
  sha256 '02679873bd4c3b686a82ecafd26ae270b8def2c832ca5e70720ca29b104bd973'

  url "https://github.com/kwin/macdependency/releases/download/#{version}/MacDependency-#{version}.dmg"
  appcast 'https://github.com/kwin/macdependency/releases.atom',
          checkpoint: '1739dc7303d6bf8e085bf93f777a3961f142530d62ab22b91ce3d83bc1d66be7'
  name 'MacDependency'
  homepage 'https://github.com/kwin/macdependency'

  app 'MacDependency.app'
end

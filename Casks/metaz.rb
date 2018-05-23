cask 'metaz' do
  version '1.0.beta-45'
  sha256 'a1c2281fc135a93000e48878c45ec5ecbe9c2c7b47b7220949a3314286ffa768'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom',
          checkpoint: '51560bb781c5d022800a848ad695a6ad5803db5b881f2cbe588afcf3a99f2e26'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end

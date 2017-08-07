cask 'numi' do
  version '3.17.1,134:1501511032'
  sha256 'cbb8fb2e424b593e1b448ecd4eb707f459d1aad71e1fc0c0da0778108c5a296d'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: '0628e73a0ef4fbfc4564fa6408358eadca3a724266ee26e5969d36488aebe953'
  name 'Numi'
  homepage 'https://numi.io/'

  auto_updates true

  app 'Numi.app'
end

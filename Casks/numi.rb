cask 'numi' do
  version '3.15.1,110:1495862794'
  sha256 '7010f8000258ba0d6b079a70fe6ac22b5ce31763bbcf5160d2f466f04b841e36'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: '1f1fbe5b0370bda68b0972f12b15d888197acef5a0564c493fe8f224a5857635'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end

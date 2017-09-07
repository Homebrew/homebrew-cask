cask 'harvest' do
  version '2.1.1'
  sha256 '0a27671345788638c56c9bcee3c3a8a07f4261909a647e6e91697719b493a44a'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '6b337fe14d20020631423c671a3ab76a14f93b163846e0ace60fa1088fa7c04a'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end

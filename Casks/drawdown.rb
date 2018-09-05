cask 'drawdown' do
  version '1.1.1'
  sha256 '83a48e16ad89f9acd2050c804978a4374cc8bd030b8768c8903a9cc7d6095b09'

  url "https://www.rwe-uk.com/uploads/updates/DrawDown_#{version}.zip"
  appcast 'https://www.rwe-uk.com/sparkle/drawdown'
  name 'DrawDown'
  homepage 'https://www.rwe-uk.com/app/drawdown'

  auto_updates true

  app 'DrawDown.app'
end

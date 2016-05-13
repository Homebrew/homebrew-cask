cask 'drawdown' do
  version '1.1.0'
  sha256 '4b5bf6c5e3cbf9809594457e6d7b4580de5babe65143a0d9097b7ad6538d7e1b'

  url "https://www.rwe-uk.com/uploads/updates/DrawDown_#{version}.zip"
  appcast 'https://www.rwe-uk.com/sparkle/drawdown',
          checkpoint: '5eeb0fe53ebe57c149c2235010d7fed60ef8e2a098306bb3b010ec6f647d6b08'
  name 'DrawDown'
  homepage 'https://www.rwe-uk.com/app/drawdown'
  license :commercial

  auto_updates true

  app 'DrawDown.app'
end

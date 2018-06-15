cask 'octomouse' do
  version 'v1.7'
  sha256 'b47639b8b4504834caee65a61c0cbe3a42e798cf4901472241f9ce3ab72793e9'

  url 'https://github.com/KonsomeJona/OctoMouse/releases/download/v1.7/OctoMouse.app.zip'
  appcast 'https://github.com/KonsomeJona/OctoMouse/releases.atom'
  name 'OctoMouse'
  homepage 'https://github.com/KonsomeJona/OctoMouse'

  app 'OctoMouse.app'
end

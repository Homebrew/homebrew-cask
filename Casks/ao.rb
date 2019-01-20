cask 'ao' do
  version '6.8.0'
  sha256 'b403a0cef2bf747876f0283b6484d5a3ac4603c8c8d4da63faa02194f9a1e3db'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end

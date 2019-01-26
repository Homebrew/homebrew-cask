cask 'notable' do
  version '1.2.0'
  sha256 '6ea690d5e9ac5ccbb118d34840a5314bddd0410e90a4ea6f0b34487307c37ad6'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}-mac.zip"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end

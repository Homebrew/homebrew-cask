cask 'notable' do
  version '1.1.0'
  sha256 '175afd8da6d52a16571bf9e557d009554c8305d8f320d3472a8dbd3973f03068'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}-mac.zip"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end

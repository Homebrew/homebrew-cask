cask 'notable' do
  version '1.0.1'
  sha256 'f8fa62e01e02e5989525bf940814801e5b1745190f4dccf9f0c50f2a687fcf49'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}-mac.zip"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end

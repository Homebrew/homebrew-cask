cask 'muzei' do
  version 'v1.0'
  sha256 '67f24d997e0d6aeca4526d501ef147f6faf60f4250ffb3b8c293bb4a55f21759'

  url "https://github.com/naman14/Muzei-macOS/releases/download/#{version}/Muzei.app.zip"
  name 'Muzei'
  homepage 'https://github.com/naman14/Muzei-macOS'

  app 'Muzei.app'
end

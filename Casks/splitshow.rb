cask 'splitshow' do
  version '0.9.6-alpha'
  sha256 '3625368cd798f8d7ed2c2bc6e850f8a6bce7430de06f9e5e2ab65e3a552d96ac'

  url "https://github.com/mpflanzer/splitshow/releases/download/#{version}/SplitShow.app.zip"
  appcast 'https://github.com/mpflanzer/splitshow/releases.atom',
          checkpoint: 'eb0f9a5c5c4f0a92561148b454477fe1f868cb6ba9cac7f3d93263de5a3f4c1b'
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'

  app 'SplitShow.app'
end

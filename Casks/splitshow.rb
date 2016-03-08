cask 'splitshow' do
  version '0.9.6-alpha'
  sha256 '3625368cd798f8d7ed2c2bc6e850f8a6bce7430de06f9e5e2ab65e3a552d96ac'

  url "https://github.com/mpflanzer/splitshow/releases/download/#{version}/SplitShow.app.zip"
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'
  license :mit

  app 'SplitShow.app'
end

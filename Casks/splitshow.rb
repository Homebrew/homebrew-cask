cask 'splitshow' do
  version '0.9.10-alpha'
  sha256 '2bd1a68dda450e1052a54499731f710d119728f85f34187436cdffb5707dccd4'

  url "https://github.com/mpflanzer/splitshow/releases/download/v.#{version}/SplitShow.app.zip"
  appcast 'https://github.com/mpflanzer/splitshow/releases.atom'
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'

  app 'SplitShow.app'
end

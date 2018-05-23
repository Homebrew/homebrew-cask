cask 'splitshow' do
  version '0.9.10-alpha'
  sha256 '2bd1a68dda450e1052a54499731f710d119728f85f34187436cdffb5707dccd4'

  url "https://github.com/mpflanzer/splitshow/releases/download/v.#{version}/SplitShow.app.zip"
  appcast 'https://github.com/mpflanzer/splitshow/releases.atom',
          checkpoint: 'a61d4692d09d0d17f5bcbeb7f71a54f4ad662b356c5b23fa01339ffb939da570'
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'

  app 'SplitShow.app'
end

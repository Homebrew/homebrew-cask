cask 'splitshow' do
  version '0.9.8-alpha3'
  sha256 'ca1b9e296f61b3bab58bf4b23b90e84483471b0fe31c8209d3c46e338fceb652'

  url "https://github.com/mpflanzer/splitshow/releases/download/#{version}/SplitShow.app.zip"
  appcast 'https://github.com/mpflanzer/splitshow/releases.atom',
          checkpoint: '14daaed9d6c9596b938cec20cbbd27b7cdced0c096e570938c42b762c803137c'
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'

  app 'SplitShow.app'
end

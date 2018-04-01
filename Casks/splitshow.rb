cask 'splitshow' do
  version '0.9.9-alpha'
  sha256 '751ddad47f75834ebd998e9de6bc5640b741f0a2ee4f892188f2ac0ae3c26d15'

  url "https://github.com/mpflanzer/splitshow/releases/download/v#{version}/SplitShow.app.zip"
  appcast 'https://github.com/mpflanzer/splitshow/releases.atom',
          checkpoint: '37df53bd109adabe4c948e5eeeb22ac805617354a54e092c034f458706897981'
  name 'SplitShow'
  homepage 'https://github.com/mpflanzer/splitshow'

  app 'SplitShow.app'
end

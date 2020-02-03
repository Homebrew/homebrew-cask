cask 'aerial' do
  version '1.7.0'
  sha256 '474e20ac7f2572d3b5d6866c9ebd83f1d38774af30570e28b5c698d670cefa0e'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end

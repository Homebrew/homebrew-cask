cask 'aerial' do
  version '1.8.2'
  sha256 '68819c2563abe1fb96218aea1fbf64e3d87116cacd19bcdd384c8708eff8817a'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end

cask 'aerial' do
  version '1.9.1'
  sha256 '63e04c6b7a1217f88afbd0422232dfaf00dda88d06abe6ec464bf24df1b6b4c0'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end

cask 'aerial' do
  version '1.6.3'
  sha256 '6ef5550aa80703d48098af74ce878fa97e0f52f354c1d96d5defc51008df2fb8'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end

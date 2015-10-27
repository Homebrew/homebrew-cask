cask :v1 => 'aerial-screensaver' do
  version '1.1'
  sha256 :no_check

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'
  license :mit

  screen_saver 'Aerial.saver'
end

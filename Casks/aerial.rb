cask :v1 => 'aerial' do
  version '1.1'
  sha256 '07365e3d0c8000bc354ab0780ad0b4106f2b9061b8b9da963bae7dd921bf8465'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'
  license :mit

  screen_saver 'Aerial.saver'
end

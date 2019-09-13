cask 'craftos-pc' do
  version '2.0.1'
  sha256 'b259fa8f8347221408f1dd16551dd841fa453956a6c2ed516133fd3b0a9f5ed4'

  url "https://github.com/MCJack123/craftos2/releases/download/v#{version}/CraftOS-PC.dmg"
  appcast 'https://github.com/MCJack123/craftos2/releases.atom'
  name 'CraftOS-PC'
  homepage 'https://github.com/MCJack123/craftos2/'

  app 'CraftOS-PC.app'
end

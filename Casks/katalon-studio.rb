cask 'katalon-studio' do
  version '7.2.2'
  sha256 '796827492e575e73ff3fef94ae4f5dc9edf155265177c810786c7ff7c33356fc'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end

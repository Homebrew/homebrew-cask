cask 'gearsystem' do
  version '3.0.3'
  sha256 '2988d659b30332655d2012de15bca3027adb5e705708a47f3f605aa01b9c79aa'

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearsystem/releases.atom'
  name 'Gearsystem'
  homepage 'https://github.com/drhelius/Gearsystem'

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end

cask 'gearboy' do
  version '3.0.1'
  sha256 '501551b1f8df5d5b10fe4445ec0c70b1f6175090546f7ff57a7df20a8cff4a8f'

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearboy/releases.atom'
  name 'Gearboy'
  homepage 'https://github.com/drhelius/Gearboy'

  app "Gearboy-#{version}-macOS/Gearboy.app"
end

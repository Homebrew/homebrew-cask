cask 'gearsystem' do
  version '3.0.1'
  sha256 'cd5f75d97ae814402c6c39f82f359ba111d98e2cfe2eeb07a5966e9b0862efd8'

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearsystem/releases.atom'
  name 'Gearsystem'
  homepage 'https://github.com/drhelius/Gearsystem'

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end

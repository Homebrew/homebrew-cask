cask 'maxrio' do
  version '0.0.1'
  sha256 :no_check

  url "https://github.com/xushao1990/Maxrio/releases/download/#{version}/Maxrio.zip"
  appcast 'https://github.com/xushao1990/Maxrio/releases.atom'
  name 'Maxrio'
  homepage 'https://github.com/xushao1990/Maxrio'

  auto_updates true

  app 'Maxrio.app'
  binary "#{appdir}/Maxrio.app/Contents/Resources/app/maxrio"
end

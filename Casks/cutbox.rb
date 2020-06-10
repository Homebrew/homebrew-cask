cask 'cutbox' do
  version '1.4.10'
  sha256 '2e13489d6de9cd5e13e53776c86460719047fb4db6ff822a19df75df9a6a23e9'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end

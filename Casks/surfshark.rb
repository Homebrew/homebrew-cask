cask 'surfshark' do
  version :latest
  sha256 :no_check

  url 'https://downloads.surfshark.com/macOS/latest/Surfshark.dmg'
  name 'Surfshark'
  homepage 'https://surfshark.com/'

  app 'Surfshark.app'
end

cask 'netron' do
  version '2.1.6'
  sha256 '0b1d0d3dd927b72c3f54415d8231729b96ed4da74f0db75eb15fecfa7f77d779'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

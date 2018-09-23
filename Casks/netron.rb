cask 'netron' do
  version '2.1.4'
  sha256 '38976c39cd7831246d19f6ac41120aba50e8a6de916b8371959cafbb32ad53ad'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

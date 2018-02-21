cask 'netron' do
  version '1.5.2'
  sha256 '604ac305832ce73dd18d42cb0c2761e4f0acf0eda6dd08926da907511a8c12be'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '74d6208762582ff039dfa268909032d1c3853bc32e485c4e2c8691744e4dcdf3'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

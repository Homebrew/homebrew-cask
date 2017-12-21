cask 'netron' do
  version '1.1.5'
  sha256 '43800d78d708ae6bea338bcd40f77048beef6723cb7417510816a2853bea9d28'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '4b2477fb43c10031f0772cf347bf94797e9bbcd14047d75224e9f4534480885a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

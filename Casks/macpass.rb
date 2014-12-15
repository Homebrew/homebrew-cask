cask :v1 => 'macpass' do
  version '0.5.1-alpha'
  sha256 '8f83f9674be637b3c0ce2c77e4683c692f8c879d529e70e5c22f42271a950c3e'

  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'http://www.nomadsland.de/macpass_appcast.xml',
          :sha256 => 'd5f71e87922f4f6ec0b736d242c6b8ea8f25767eb4218cd56c90c8fa2b7b4908'
  homepage 'http://mstarke.github.io/MacPass/'
  license :oss

  app 'MacPass.app'
end

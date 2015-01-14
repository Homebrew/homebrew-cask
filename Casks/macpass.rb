cask :v1 => 'macpass' do
  version '0.5.1-alpha'
  sha256 '6d69ce183d5be1031df344b3cf4941a3d9495dc6dedb2d67611bbd89b754427d'

  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'http://www.nomadsland.de/macpass_appcast.xml',
          :sha256 => 'd5f71e87922f4f6ec0b736d242c6b8ea8f25767eb4218cd56c90c8fa2b7b4908'
  name 'MacPass'
  homepage 'http://mstarke.github.io/MacPass/'
  license :oss

  app 'MacPass.app'
end

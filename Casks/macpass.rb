cask :v1 => 'macpass' do
  version '0.4.1-alpha'
  sha256 '1beaec4f0f8e33e5bf2575a4706befe6ef513f46ddc49f7662b6af3721680039'

  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'http://www.nomadsland.de/macpass_appcast.xml',
          :sha256 => 'd5f71e87922f4f6ec0b736d242c6b8ea8f25767eb4218cd56c90c8fa2b7b4908'
  homepage 'http://mstarke.github.io/MacPass/'
  license :oss

  app 'MacPass.app'
end

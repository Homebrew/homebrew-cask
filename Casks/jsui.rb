cask 'jsui' do
  version '0.0.17'
  sha256 '913ec94421215516f7a7e6ca751555bcdf4a4fff92489b56b70f1ec37b768408'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom',
          checkpoint: '568b98adc4c36e1f5c0ff5449c9d3570a9f4e116be8d14afc4826fb2868412e9'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'
end

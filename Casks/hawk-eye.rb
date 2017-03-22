cask 'hawk-eye' do
  version '0.2.0'
  sha256 'f62dbef8556a8b9d698ca0e10fb7aa550fc1a8a854c39f9417ddb158db9d2a09'

  url "https://github.com/harksys/HawkEye/releases/download/#{version}/hawkeye-#{version}-osx-x64.dmg"
  appcast 'https://github.com/harksys/HawkEye/releases.atom',
          checkpoint: 'cdb54347126b720f323668e929ff42e88a2795a32a0cfc7a0a86c8ba5752e009'
  name 'Hawk Eye'
  homepage 'https://github.com/harksys/HawkEye'

  auto_updates true

  app 'Hawk Eye.app'
end

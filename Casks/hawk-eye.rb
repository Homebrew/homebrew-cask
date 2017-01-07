cask 'hawk-eye' do
  version '0.1.0'
  sha256 'f3a499f056f3a7e1f40dd60eda67503ae70b23bfc52c3bddd1befb16f02f1f08'

  url "https://github.com/harksys/HawkEye/releases/download/#{version}/hawkeye-#{version}-osx-x64.dmg"
  appcast 'https://github.com/harksys/HawkEye/releases.atom',
          checkpoint: '150c01ef0b020ff10b357c7835db5f41d92cf5f0673f7bc22b60663307a6dd61'
  name 'Hawk Eye'
  homepage 'https://github.com/harksys/HawkEye'

  auto_updates true

  app 'Hawk Eye.app'
end

cask 'hawk-eye' do
  version '0.1.0'
  sha256 'f3a499f056f3a7e1f40dd60eda67503ae70b23bfc52c3bddd1befb16f02f1f08'

  url "https://github.com/harksys/HawkEye/releases/download/#{version}/hawkeye-#{version}-osx-x64.dmg"
  appcast 'https://github.com/harksys/HawkEye/releases.atom',
          checkpoint: '48d0bc77ea24fef00c175dfc11ee313f55131c792d95ce1fde44148b63668559'
  name 'Hawk Eye'
  homepage 'https://github.com/harksys/HawkEye'

  auto_updates true

  app 'Hawk Eye.app'
end

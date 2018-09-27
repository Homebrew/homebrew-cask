cask 'nheko' do
  version '0.6.1'
  sha256 'caef9bd13e7177453ba8b49b22b64e98c6dba8ce8ab1d28c437514f2e13f381c'

  url "https://github.com/mujx/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end

cask 'netron' do
  version '1.5.8'
  sha256 '2a8a8d120a6c72dcabd0cce4827cb5b46e379fdc9db9bc5c9645f55fca9dae4e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'ec9ab519c20d98f5c814961a3314fd0a8dd8b336b76fd18262d7048dda36dd8f'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

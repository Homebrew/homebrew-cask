cask 'instead' do
  version '3.2.0'
  sha256 '1b3ef401dc3c4a2bcece09b74ad759bbc043b5f0ebc8f18ef29dc17e7b4f0593'

  # github.com/instead-hub/instead was verified as official when first introduced to the cask
  url "https://github.com/instead-hub/instead/releases/download/#{version}/Instead-#{version}.dmg"
  appcast 'https://github.com/instead-hub/instead/releases.atom',
          checkpoint: '22bfb0a6ec9f5105740b4a377e772a373ff101b1e1a6198806cd7c1a3ffb4fbc'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end

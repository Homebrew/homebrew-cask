cask 'copyq' do
  version '3.0.0'
  sha256 'a84435a770fdcca2749b9a84e99d35867e4733018efb0ed23ee050c8b184d0e1'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '9b8da6edd64c0638b572e0d79b27a7613345f0cec894481e8adb28b6bb1c6d9b'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end

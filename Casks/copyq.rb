cask 'copyq' do
  version '3.0.1'
  sha256 '82bbba7a0a9166a6b56b53e7fcf3f9ce3f4353acc8a8ab4bb046c1284e08d74c'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '64c7da38984cbe24eeecf4f8383be366baec7b9c65e729261b63fa537467a406'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end

cask 'copyq' do
  version '2.8.2'
  sha256 '050dd898ffb2c68aad3d9a7163dd0b79ec126bded13249a69236985b69d01699'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '2bca0baf7bb9ede52cd8ceb271fea4937043ca427aed43c8378fbc3852a51cd7'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end

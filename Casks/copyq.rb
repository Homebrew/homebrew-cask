cask 'copyq' do
  version '2.6.1'
  sha256 'd1c9a37f12753dc44aede76e4724fea75b7f6860795f710e5c72c817a18301c9'

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}.dmg"
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'
  license :gpl

  app 'CopyQ.app'
end

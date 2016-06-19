cask 'copyq' do
  version '2.7.0'
  sha256 '3be2f8729b2d4452bc00f756db5d705fc78fa799e2533d965b7bf84f3e6eaca4'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: 'e10907006fdc1fd72360599cdd2e40a794b14cf692dd3ef92478c3277cca6a46'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'
  license :gpl

  app 'CopyQ.app'
end

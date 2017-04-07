cask 'copyq' do
  version '3.0.0'
  sha256 'a84435a770fdcca2749b9a84e99d35867e4733018efb0ed23ee050c8b184d0e1'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '799764a5770226e3c52fdd1e1718b8188e600633d47b893c4f962eb4c6e370c6'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end

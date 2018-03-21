cask 'manta' do
  version '1.1.2'
  sha256 'f3907c15172e7effefcc8a555c53e322d668a8c33216d9702f50a371564a4cd3'

  # github.com/hql287/Manta was verified as official when first introduced to the cask
  url "https://github.com/hql287/Manta/releases/download/v#{version}/Manta-#{version}-mac.zip"
  appcast 'https://github.com/hql287/Manta/releases.atom',
          checkpoint: '71e11321e83109b18ef39893a1aa7053b87f9865d756bfd8aa9eeb77c654592f'
  name 'Manta'
  homepage 'https://manta.life/'

  app 'Manta.app'
end

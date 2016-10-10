cask 'mancy' do
  version '3.1.0'
  sha256 '05391037fc77c97709b7b7c18f92b3721d4a7dfb6f7530bbd8ed85be8d51bb88'

  # github.com/princejwesley/Mancy was verified as official when first introduced to the cask
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '17da0fd50eed4f6e82adee200d440f7c2febef231fcc96f3af6e92fdf0b0a81e'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'

  app 'Mancy-darwin-x64/Mancy.app'
end

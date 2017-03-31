cask 'sabaki' do
  version '0.21.0'
  sha256 'e464ccb75867ca920b842a254231042489d9650a04cc782e2955b5ced4b086ea'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: '0b85fd0e0c736bd654937f0be9429d82592e94c072800490d3ecce724e4af882'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

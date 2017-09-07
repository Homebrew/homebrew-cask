cask 'qlcommonmark' do
  version '1.1'
  sha256 '7778fae360f844fc17b17a4d5f8d3a01db811b0f78e174b70bea4410de2b12c7'

  url "https://github.com/digitalmoksha/QLCommonMark/releases/download/v#{version}/QLCommonMark.qlgenerator.zip"
  appcast 'https://github.com/digitalmoksha/QLCommonMark/releases.atom',
          checkpoint: '3584231f55aedf0d7f0fffed34f9fdf2c3136bb5f32eec37f566e42a883d4b07'
  name 'QLCommonMark'
  homepage 'github.com/digitalmoksha/QLCommonMark/'

  qlplugin 'QLCommonMark.qlgenerator'
end

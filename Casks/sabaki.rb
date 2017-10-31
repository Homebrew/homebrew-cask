cask 'sabaki' do
  version '0.31.5'
  sha256 '37243b32366c52b8b085bbe40b298d35ac267f8c8e3151e51770fa2e9886acdc'

  # github.com/yishn/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/yishn/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/yishn/Sabaki/releases.atom',
          checkpoint: 'e6355cfabc25825ba324edbe5c2c65b165c2caca185792f10ee362b2cbbe7c62'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  depends_on formula: 'unar'

  app 'Sabaki.app'
end

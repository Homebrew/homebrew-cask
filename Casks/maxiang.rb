cask 'maxiang' do
  version ':latest'
  sha256 'ba9f2f32bc6c68ac732d0131d1e2a74aae2125a44012a0f6c1e975f7a4676419'

  # github.com/filosfino was verified as official when first introduced to the cask
  url 'https://github.com/filosfino/apps/raw/master/Maxiang.dmg'
  name 'maxiang'
  homepage 'https://maxiang.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '马克飞象.app'
end

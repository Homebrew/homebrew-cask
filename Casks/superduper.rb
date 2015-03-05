cask :v1 => 'superduper' do
  version :latest
  sha256 :no_check

  url 'http://www.shirt-pocket.com/downloads/SuperDuper!.dmg'
  homepage 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SuperDuper!.app'

  zap :delete => '~/Library/Application Support/SuperDuper!'
end

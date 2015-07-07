cask :v1 => 'plain-clip' do
  version :latest
  sha256 :no_check

  url 'https://www.bluem.net/files/Plain-Clip.dmg'
  name 'Plain Clip'
  homepage 'https://www.bluem.net/en/mac/plain-clip'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plain Clip.app'
end

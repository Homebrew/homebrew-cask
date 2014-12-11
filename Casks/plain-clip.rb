cask :v1 => 'plain-clip' do
  version :latest
  sha256 :no_check

  url 'https://www.bluem.net/files/Plain-Clip.dmg'
  homepage 'http://www.bluem.net/en/mac/plain-clip'
  license :unknown    # todo: improve this machine-generated value

  app 'Plain Clip.app'
end

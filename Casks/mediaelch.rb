cask :v1 => 'mediaelch' do
  version '2.1.2'
  sha256 '6387b815a81de7526521811b90cc9f7b3f56821f6c01b22f25cae3f3b5d46efe'

  url "http://www.kvibes.de/releases/mediaelch/#{version}/MediaElch-#{version}.dmg"
  name 'MediaElch'
  homepage 'http://www.mediaelch.de/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MediaElch.app'
end

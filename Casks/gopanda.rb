cask :v1 => 'gopanda' do
  version :latest
  sha256 :no_check

  url 'http://pandanet-igs.com/gopanda2/installer/stable/mac-32/gopanda2-mac-32.zip'
  homepage 'http://pandanet-igs.com/communities/gopanda2'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GoPanda2.app'
end

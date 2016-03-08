cask 'gopanda' do
  version :latest
  sha256 :no_check

  url 'http://pandanet-igs.com/gopanda2/installer/stable/osx-32/gopanda2-osx-32.zip'
  name 'GoPanda'
  homepage 'http://pandanet-igs.com/communities/gopanda2'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GoPanda2.app'
end

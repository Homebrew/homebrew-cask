cask 'soleol' do
  version :latest
  sha256 :no_check

  url 'http://eduo.info/soleol-support/releases/SolEol-Mac.zip'
  name 'SolEol'
  homepage 'http://eduo.info/apps/soleol'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SolEol/SolEol.app'
end

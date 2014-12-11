cask :v1 => 'soleol' do
  version :latest
  sha256 :no_check

  url 'http://eduo.info/soleol-support/releases/SolEol-Mac.zip'
  homepage 'http://eduo.info/apps/soleol'
  license :unknown    # todo: improve this machine-generated value

  app 'SolEol/SolEol.app'
end

cask :v1 => 'nothing-to-hide' do
  version :latest
  sha256 :no_check

  url 'https://nothingtohide.s3.amazonaws.com/pc/Nothing_To_Hide_MAC.zip'
  homepage 'https://back.nothingtohide.cc/'
  license :unknown    # todo: improve this machine-generated value

  app 'Nothing To Hide.app'
end

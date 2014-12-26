cask :v1 => 'nothing-to-hide' do
  version :latest
  sha256 :no_check

  url 'https://nothingtohide.s3.amazonaws.com/pc/Nothing_To_Hide_MAC.zip'
  homepage 'https://back.nothingtohide.cc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nothing To Hide.app'
end

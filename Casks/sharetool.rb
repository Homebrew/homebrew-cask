cask :v1 => 'sharetool' do
  version '2.4.1'
  sha256 'd6c19e082f9d96b1831692d308a4d5512608e6ca8d58c52d7e95bb2da0832a8c'

  url 'http://software-files-a.cnet.com/s/software/12/85/93/73/sharetool2.zip?lop=link&ptype=3001&ontid=7240&siteId=4&edId=3&spi=b95d1f82803e8d0dd208a759ca8ecc48&pid=12859373&psid=198769&token=1394020831_2637325d8e249b00ddbf1f29824144ac&fileName=sharetool2.zip'
  homepage 'http://bainsware.com/'
  license :unknown

  container :nested => 'ShareTool 2.dmg'
  app 'ShareTool.app'
end

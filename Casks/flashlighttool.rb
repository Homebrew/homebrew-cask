cask :v1 => 'flashlighttool' do
  version '1.3'
  sha256 '733f89735109f43f32d9081a37cf2cf5de68535ddd0e64ce45a41e5017058cfa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/easyaf/uploads/984cd555-3c75-45d7-9625-e331d3b95592/FlashlightTool-#{version}.zip"
  name 'FlashlightTool'
  homepage 'http://flashlighttool.42pag.es/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FlashlightTool.app'
end

cask "flashlighttool" do
  version "1.3"
  sha256 "733f89735109f43f32d9081a37cf2cf5de68535ddd0e64ce45a41e5017058cfa"

  # easyaf.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://easyaf.s3.amazonaws.com/uploads/984cd555-3c75-45d7-9625-e331d3b95592/FlashlightTool-#{version}.zip"
  appcast "http://flashlighttool.42pag.es"
  name "FlashlightTool"
  homepage "http://flashlighttool.42pag.es/"

  app "FlashlightTool.app"
end

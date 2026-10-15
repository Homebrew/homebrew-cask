cask "imageflow" do
  version "1.1"
  sha256 "8796b545f530cb05b850ed06a8d138e607edd2c1eb019ff0fa49aa36f2b4865f"

  url "https://pub-adafe57b64f94b2792768753ef920962.r2.dev/ImageFlow-#{version}.zip"
  name "ImageFlow"
  desc "Node-based image editor"
  homepage "https://www.imageflowapp.com/"

  livecheck do
    url "https://imageflowapp.com/releases.json"
    strategy :json do |json|
      json["current"]
    end
  end

  auto_updates false
  depends_on macos: :tahoe

  app "ImageFlow.app"

  zap trash: [
    "~/Library/Application Scripts/com.dmbfm.imageflow.macos",
    "~/Library/Containers/com.dmbfm.imageflow.macos",
  ]
end

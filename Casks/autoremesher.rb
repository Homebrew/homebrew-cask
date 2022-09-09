cask "autoremesher" do
  version "1.0.0-beta.3"
  sha256 :no_check

  url "https://github.com/huxingyi/autoremesher/releases/download/#{version}/autoremesher-#{version}.dmg"
  name "AutoRemesher"
  desc "Your gateway to Megascans and Metahumans"
  homepage "https://github.com/huxingyi/autoremesher/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.?\d*)?)$/i)
  end

  app "autoremesher-1.0.0-beta.3.app"
end

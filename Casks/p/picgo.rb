cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "181accc909451424dea9e1a6e22e1fd547595dfff3e98390d427994f3f849f53",
         intel: "1044da0f5927dbbc8cd41ce7e6eebbc9adf3237407a086fd83e522b2347ce849"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end

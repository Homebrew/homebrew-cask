cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "10f508b759c06f85c996bfa47c6a30d8e4d37d2d6b76b43f9fe43387d31a6c35",
         intel: "87812d59cb66e80d3ed05a1c8e8502c0f83d144ae84c1bd46a9107c0850db84f"

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

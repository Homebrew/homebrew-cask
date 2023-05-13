cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "a2216b8572565a099d8d66b3d425a94e64de3b8b3ecfb7dc2d84f6b2814aa3bb",
         intel: "6522bad65f0abce9e5ce0f5208244ce73660c51a299189aafd754431c03960e3"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end

cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "6cd76053abb11eb044a5c367a035cc11b046c195eacb4d47e69719653c1c2b56",
         intel: "71ed0d6b40f980fd22666088d2555fd74cb2b2d856929125fe2217808a36748b"

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

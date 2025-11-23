cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "f84df1c30b2387fc303a6e0925c39a135888a63d7b1855d1ebee8394adc20287",
         intel: "e7b1be19a1f9ed78f46cdef5e21947c3c22fbf543375ebadb9870672b55dada9"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end

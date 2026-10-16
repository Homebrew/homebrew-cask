cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0"
  sha256 arm:   "f21d6153b7b57c03b145d3e91fa964a48db93e4ce772ef5b25d92a4afec21dbc",
         intel: "fae87b3331386f525609a01da4ca359281866633fc42c70de63d41bd2b8b9d22"

  url "https://dist.inkdrop.app/releases/inkdrop-#{version}-#{arch}-mac.zip"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.app/"

  livecheck do
    url "https://dist.inkdrop.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end

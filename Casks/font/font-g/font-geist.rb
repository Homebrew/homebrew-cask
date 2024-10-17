cask "font-geist" do
  version "1.4.01"
  sha256 "b013dce423d16c03238593f6b8e0a281322bafdc2a75b376a91de8721cf18315"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/Geist-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist"
  homepage "https://vercel.com/font/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "otf/Geist-Black.otf"
  font "otf/Geist-Bold.otf"
  font "otf/Geist-ExtraBold.otf"
  font "otf/Geist-ExtraLight.otf"
  font "otf/Geist-Light.otf"
  font "otf/Geist-Medium.otf"
  font "otf/Geist-Regular.otf"
  font "otf/Geist-SemiBold.otf"
  font "otf/Geist-Thin.otf"
  font "variable/Geist[wght].ttf"

  # No zap stanza required
end

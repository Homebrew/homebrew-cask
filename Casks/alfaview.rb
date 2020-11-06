cask "alfaview" do
  version "8.10.0"
  sha256 "c8ff923d7bde8f7292287c4d1f5e3520d5d757c676c2eaf3406add1f880e94a4"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end

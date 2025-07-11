cask "hbuilderx" do
  arch arm: ".arm64"

  version "4.75.2025071105"
  sha256 arm:   "6c521e57c9949fbaa8b39ce934996b95071b9e910957ccff0ad6adc3a9736063",
         intel: "7d5e97afed4b6d355a8c06571b2aff931f6fba86b382d63ebe810180e85a0df9"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg",
      verified: "download1.dcloud.net.cn/download/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end

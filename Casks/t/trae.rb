cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7272"
  sha256 arm:   "ca6ba4d157eb20f9c884d0cece48ac118ee119210267789cddb6f862947776de",
         intel: "4b0ab9700ec678019ff5791f76f460b06471d64bafd2478d96105adafb431dc0"

  url "https://lf-trae.toscdn.com/obj/trae-ai-cn/pkg/app/releases/stable/#{version}/darwin/Trae-darwin-#{arch}.dmg",
      verified: "lf-trae.toscdn.com/"
  name "Trae"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.ai/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/latest"
    strategy :json do |json|
      json.dig("data", "manifest", "darwin", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Trae.app"

  zap trash: [
    "~/Library/Application Support/Trae",
    "~/Library/Preferences/com.trae.app.plist",
    "~/Library/Saved Application State/com.trae.app.savedState",
  ]
end

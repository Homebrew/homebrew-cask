cask "magpie" do
  arch arm: "arm64", intel: "intel"

  version "0.1.424"
  sha256 :no_check

  url "https://usemagpie.ai/download/mac-#{arch}"
  name "magpie"
  desc "Gateway that lets coding agents use any AI model provider"
  homepage "https://usemagpie.ai/"

  livecheck do
    url "https://usemagpie.ai/api/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "magpie.app"
  binary "#{appdir}/magpie.app/Contents/MacOS/magpie"

  uninstall quit: "com.yetone.magpie"

  zap trash: [
    "~/.cache/magpie",
    "~/.config/magpie",
    "~/Library/Caches/com.yetone.magpie",
    "~/Library/WebKit/com.yetone.magpie",
  ]
end

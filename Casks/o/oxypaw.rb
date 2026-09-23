cask "oxypaw" do
  version "0.1.21"
  sha256 "5faf12a1c805b7e8b3c21c89af3e8b0ccfac94997cfa535a182a6eb669da93c8"

  url "https://oxypaw.io/downloads/Oxypaw_#{version}_aarch64.dmg"
  name "Oxypaw"
  desc "HTTP(S) debugging proxy to capture, inspect and rewrite traffic"
  homepage "https://oxypaw.apiof.com/"

  livecheck do
    url "https://oxypaw.io/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Oxypaw.app"

  zap trash: [
    "~/Library/Application Support/oxypaw",
    "~/Library/Caches/dev.oxypaw.desktop",
    "~/Library/WebKit/dev.oxypaw.desktop",
  ]
end

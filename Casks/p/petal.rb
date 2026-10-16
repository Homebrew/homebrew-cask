cask "petal" do
  version "0.9.31"
  sha256 "a2029fdfeda0b9d53977af4fb6dd6ef009eefdeae8af437f3b370cb9a5fa9c3f"

  url "https://l882xxepjgu15ol2.public.blob.vercel-storage.com/Petal_#{version}_universal.dmg"
  name "Petal"
  desc "Multi-window screen sharing where each shared window becomes a native window"
  homepage "https://petal.live/"

  livecheck do
    url "https://app.petal.live/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Petal.app"

  zap trash: [
    "~/Library/Application Support/com.petal.app",
    "~/Library/Caches/com.petal.app",
    "~/Library/Logs/Petal",
    "~/Library/WebKit/com.petal.app",
  ]
end

cask "petal" do
  version "0.9.35"
  sha256 "7ece6ad9cec992d66b7e29fd33b4bcbf04be386084510321fda84827ac19636f"

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

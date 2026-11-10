cask "petal" do
  version "0.9.37"
  sha256 "29afb30400dd915466ba81b72bc1e479c4af03f76a0a5d3b3ca6df874723b3cf"

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

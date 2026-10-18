cask "petal" do
  version "0.9.33"
  sha256 "8268a5953ecb476f7737cf5a9b0d931d0ccee2b9425c3a23ade2f10a88aed30f"

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

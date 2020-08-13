cask "adapter" do
  version "2.1.6"
  sha256 "ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729"

  url "https://assets.macroplant.com/download/4/Adapter-#{version}.dmg"
  appcast "https://macroplant.com/adapter"
  name "Adapter"
  homepage "https://macroplant.com/adapter"

  app "Adapter.app"

  zap trash: [
    "~/Library/Application Support/Adapter",
    "~/Library/Caches/com.macroplant.adapter",
    "~/Library/com.macroplant.adapter.plist",
  ]
end

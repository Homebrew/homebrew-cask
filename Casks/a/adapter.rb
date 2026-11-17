cask "adapter" do
  version "2.1.6"
  sha256 "ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729"

  url "https://macroplant.com/adapter/download/mac/#{version}"
  name "Adapter"
  desc "Converts video, audio and images"
  homepage "https://macroplant.com/adapter"

  livecheck do
    url :homepage
    regex(%r{href=.*?/adapter/download/mac(?:/complete)?/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on :macos

  app "Adapter.app"

  zap trash: [
    "~/Library/Application Support/Adapter",
    "~/Library/Caches/com.macroplant.adapter",
    "~/Library/com.macroplant.adapter.plist",
  ]

  caveats do
    requires_rosetta
  end
end

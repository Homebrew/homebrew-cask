cask "blick" do
  version "0.5.2"
  sha256 "532a1bd733005fa9a0e35e54ebfd361ecab896693b36a09c6af6f8a83b1f0591"

  url "https://blickeditor.com/dl/Blick_#{version}_macos_arm64_portable.zip"
  name "Blick"
  desc "Video editor"
  homepage "https://blickeditor.com/"

  livecheck do
    url "https://dl.dihedron.net/releases/blick.json"
    strategy :json do |json|
      json["versions"]&.map { |release| release["version"] }
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Blick.app"

  zap trash: "~/Library/Application Support/blick",
      rmdir: "~/Documents/blick"
end

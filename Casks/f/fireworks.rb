cask "fireworks" do
  version "1.2"
  sha256 :no_check

  url "https://www.fireworksapp.xyz/public/fireworks.zip"
  name "Fireworks"
  desc "Particle effects editor"
  homepage "https://www.fireworksapp.xyz/"

  livecheck do
    url :homepage
    regex(/Download\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Fireworks.app"

  zap trash: [
    "~/Library/Application Scripts/com.Besher-Al-Maleh.fireworks",
    "~/Library/Containers/com.Besher-Al-Maleh.fireworks",
  ]

  caveats do
    requires_rosetta
  end
end

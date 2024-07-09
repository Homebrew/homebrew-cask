cask "autumn" do
  version "1.0.7"
  sha256 "2f6bff1c6203eddc8c3d48887d176d5dec0bc57dc66c3dfa1740c5a0dcd6fe93"

  url "https://github.com/apandhi/Autumn/releases/download/#{version}/Build.zip",
      verified: "github.com/apandhi/Autumn/"
  name "Autumn"
  desc "Window manager for JavaScript development"
  homepage "https://apandhi.github.io/Autumn/"

  depends_on macos: ">= :high_sierra"

  app "Autumn.app"

  zap trash: [
    "~/Library/Caches/com.sephware.autumn",
    "~/Library/Preferences/com.sephware.autumn.plist",
    "~/Library/WebKit/com.sephware.autumn",
  ]

  caveats do
    requires_rosetta
  end
end

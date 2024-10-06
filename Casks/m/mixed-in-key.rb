cask "mixed-in-key" do
  version "11.0.1.5951"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/67/release/latest?key=public"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/get#{version.major}/"

  livecheck do
    url :url
    regex(%r{/Mixed%2BIn%2BKey[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Mixed In Key #{version.major}.app"

  uninstall quit: "com.mixedinkey.application"

  zap trash: [
    "~/Library/Application Support/com.mixedinkey.application",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.application",
    "~/Library/HTTPStorages/com.mixedinkey.application",
    "~/Library/Preferences/com.mixedinkey.application.plist",
    "~/Library/WebKit/com.mixedinkey.application",
  ]
end

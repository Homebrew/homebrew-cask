cask "mixed-in-key" do
  version "10.3.1.5057"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/43/release/latest?key=public"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/get#{version.major}/"

  livecheck do
    url :url
    regex(%r{/Mixed%2BIn%2BKey[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :header_match
  end

  auto_updates true

  app "Mixed In Key #{version.major}.app"

  uninstall quit: "com.mixedinkey.application"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mixedinkey.application.sfl*",
    "~/Library/Application Support/com.mixedinkey.application",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.application",
    "~/Library/Preferences/com.mixedinkey.application.plist",
    "~/Library/Preferences/com.mixedinkey.Session.plist",
    "~/Library/Saved Application State/com.mixedinkey.application.savedState",
  ]
end

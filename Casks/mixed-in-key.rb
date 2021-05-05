cask "mixed-in-key" do
  version "10.0.0.4394"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/43/release/latest?key=public"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/get#{version.major}/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/Mixed In Key (\d+)/i)
      match[1] + version.sub(/^\d+/, "")
    end
  end

  auto_updates true

  app "Mixed In Key #{version.major}.app"

  uninstall quit: "com.mixedinkey.application"

  zap trash: [
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Application Support/com.mixedinkey.application",
    "~/Library/Caches/com.mixedinkey.application",
    "~/Library/Preferences/com.mixedinkey.Session.plist",
    "~/Library/Preferences/com.mixedinkey.application.plist",
    "~/Library/Saved Application State/com.mixedinkey.application.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mixedinkey.application.sfl*",
  ]
end

cask "herdr-app" do
  version "0.1.12"
  sha256 "3c4e714917151cad9fb19aad9c79e2dbb2ce0375046c76f2310792a91cc9e255"

  url "https://releases.herdr.dev/app/#{version}/Herdr.dmg"
  name "Herdr"
  desc "Desktop app for terminals and coding agents"
  homepage "https://herdr.dev/"

  livecheck do
    url "https://releases.herdr.dev/app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Herdr.app"
  binary "#{appdir}/Herdr.app/Contents/MacOS/Herdr", target: "herdr-app"

  zap trash: [
    "~/.config/herdr-app",
    "~/Library/Preferences/dev.herdr.app.plist",
  ]
end

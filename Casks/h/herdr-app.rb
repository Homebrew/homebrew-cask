cask "herdr-app" do
  version "0.1.13"
  sha256 "daa2b1cc88cbe7ec68a58d92f321a1a5ea866eeadf43dcc67c794929bc45cd92"

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

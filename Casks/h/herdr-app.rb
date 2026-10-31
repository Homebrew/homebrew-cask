cask "herdr-app" do
  version "0.1.11"
  sha256 "e918204612d0ad0266f476acdcf7b217c34d0d7e1c8ace22a37b2df2bf20eafb"

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

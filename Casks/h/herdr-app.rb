cask "herdr-app" do
  version "0.1.14"
  sha256 "26ca3ab39c76c01096721e84d9342cba0bcb1b337e2f5c7956eac8a07b992895"

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

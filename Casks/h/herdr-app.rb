cask "herdr-app" do
  version "0.1.15"
  sha256 "602df56ceaf2a5f47be16e7c5804a229586144a55dd6c6171029913235fc673f"

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

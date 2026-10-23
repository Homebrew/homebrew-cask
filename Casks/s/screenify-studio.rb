cask "screenify-studio" do
  version "2.6.5"
  sha256 "e129671d72fc6946fbdc3448386338b94ce9e2672112ec96082590c738dca6a5"

  url "https://releases.screenify.studio/stable/#{version}/Screenify%20Studio_#{version}_aarch64.dmg"
  name "Screenify Studio"
  desc "Screen recorder and device mockup studio for product demos"
  homepage "https://www.screenify.studio/"

  livecheck do
    url "https://www.screenify.studio/api/releases/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Screenify Studio.app"

  zap trash: [
    "~/Library/Application Support/studio.screenify.desktop",
    "~/Library/Caches/screenify-desktop",
    "~/Library/Caches/studio.screenify.desktop",
    "~/Library/Preferences/screenify-desktop.plist",
    "~/Library/Preferences/studio.screenify.desktop.plist",
    "~/Library/WebKit/studio.screenify.desktop",
  ]
end

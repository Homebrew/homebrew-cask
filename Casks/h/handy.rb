cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.11"
  sha256 arm:   "7f929c3f288bd599034435cd473d83b03af64e1ed7e54733ea225801bbd74e8c",
         intel: "1e7c68e6f3d29483a4b6545404530a25e26b57ff93e469b3955385c6676cfda6"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end

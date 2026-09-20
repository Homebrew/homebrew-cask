cask "mergepulse" do
  version "0.1.0"
  sha256 "11beec218411b79cd82d3c6ca716aeb2d09b1dcc487bcb6baa0f4eb42b9bbb49"

  url "https://pub-33939eb6da234a70b51bfa1a05b00677.r2.dev/releases/v#{version}/MergePulse.zip"
  name "MergePulse"
  desc "Menu bar app for pull requests involving you"
  homepage "https://mergepulse.dev/"

  livecheck do
    url "https://pub-33939eb6da234a70b51bfa1a05b00677.r2.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MergePulse.app"

  zap trash: [
    "~/Library/Caches/dev.mergepulse.app",
    "~/Library/Preferences/dev.mergepulse.app.plist",
  ]
end

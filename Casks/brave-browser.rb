cask "brave-browser" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "stable" : "stable-arm64"

  version "1.31.87.0,131.87"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.after_comma}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  if Hardware::CPU.intel?
    sha256 "3d890525dd7994b44f97f72de0aaa2ae5a505bb72b368d028bc1d4ddd7da0ea9"
  else
    sha256 "f9f63dade185f3a7b46efaa2caa47439fedfe71b8aa95009f79bf1ce43f9ddb0"
  end

  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end

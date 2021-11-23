cask "brave-browser" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "stable" : "stable-arm64"

  version "1.32.106.0,132.106"

  if Hardware::CPU.intel?
    sha256 "251e6f4976ec1736aa7124e4bfc091556951ac620faa59ddd338c5a87276087a"
  else
    sha256 "2cd7f80854c0090575b34cc4f059888ce454b26b099c65d579d8f9f820ffea93"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.after_comma}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
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

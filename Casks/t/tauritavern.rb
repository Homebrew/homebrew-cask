cask "tauritavern" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "e6f2885164447eb58725bcc1c1bbb1618bd8e7cf7756f32b4acd272b056dc474",
         intel: "0377fec4acc8f9f07d94666e62d4f4c6eac11b0babe5c7dd92a0596652e99f65"

  url "https://github.com/Darkatse/TauriTavern/releases/download/v#{version}/TauriTavern_#{version}_#{arch}.dmg",
      verified: "github.com/Darkatse/TauriTavern/"
  name "TauriTavern"
  desc "SillyTavern-compatible native client"
  homepage "https://tauritavern.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "TauriTavern.app"

  zap trash: [
    "~/Library/Application Support/com.tauritavern.client",
    "~/Library/Caches/com.tauritavern.client",
    "~/Library/Preferences/com.tauritavern.client.plist",
    "~/Library/WebKit/com.tauritavern.client",
  ]
end

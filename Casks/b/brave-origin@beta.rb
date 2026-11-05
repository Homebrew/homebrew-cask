cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "d197bac12d77170bad045dc8d96c08046c3731e8c78bf9a0151cbfdc21dc911c",
         intel: "c1c42551869972f0678b25896d4becf0b6ef25cb523268ed718b92dc48ba8263"

  on_arm do
    version "1.100.49.0,200.49"
  end
  on_intel do
    version "1.100.49.0,200.49"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/#{version.csv.second}/Brave-Origin-Beta-#{arch}.dmg"
  name "Brave Origin Beta"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#beta"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin Beta.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/com.brave.Browser.origin.beta",
        "~/Library/HTTPStorages/com.brave.Browser.origin.beta",
        "~/Library/Preferences/com.brave.Browser.origin.beta.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.beta.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end

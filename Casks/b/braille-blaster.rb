cask "braille-blaster" do
  arch arm: "aarch64", intel: "amd64"

  version "3.2.1"
  sha256 arm:   "086f00d17b5b29d0851915f5885bef9021ed7ada22208bbdf48e87642640b13a",
         intel: "d974dc3cff9facc08b7c1f7c2b312a00fb56c3b53eb52e6983802cdad7ac9053"

  url "https://github.com/aphtech/brailleblaster/releases/download/release/#{version}/brailleblaster-#{version}-mac-#{arch}.zip",
      verified: "github.com/aphtech/brailleblaster/"
  name "BrailleBlaster"
  desc "Braille transcription program for creating braille textbooks"
  homepage "https://www.brailleblaster.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{release/v?(\d+(?:\.\d+)+)}i)
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "BrailleBlaster.app"

  zap trash: [
    "~/Library/Application Support/BrailleBlaster",
    "~/Library/Caches/org.aph.brailleblaster",
    "~/Library/HTTPStorages/org.aph.brailleblaster",
    "~/Library/Preferences/org.aph.brailleblaster.plist",
    "~/Library/Saved Application State/org.aph.brailleblaster.savedState",
  ]
end

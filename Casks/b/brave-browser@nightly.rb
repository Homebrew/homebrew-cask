cask "brave-browser@nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  sha256 arm:   "c23432881d8dcde51e4845a115c44ea88e57d7dc4ff16349f7cbb8288bdd2cc7",
         intel: "56dd70212b5e79e478e26b31735178dd55f137846587a389d637e48e085e34ea"

  on_arm do
    version "1.101.32.0,201.32"
  end
  on_intel do
    version "1.101.32.0,201.32"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Nightly-#{arch}.dmg"
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Browser Nightly.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser-Nightly",
        "~/Library/Caches/BraveSoftware/Brave-Browser-Nightly",
        "~/Library/Caches/com.brave.Browser.nightly",
        "~/Library/HTTPStorages/com.brave.Browser.nightly",
        "~/Library/Preferences/com.brave.Browser.nightly.plist",
        "~/Library/Saved Application State/com.brave.Browser.nightly.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end

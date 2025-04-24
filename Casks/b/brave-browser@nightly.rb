cask "brave-browser@nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  version "1.80.3.0"
  sha256 arm:   "b19470075ea4fcd1633311ebb1257a5ef881261d639c37b0949ae02a2f387658",
         intel: "4cac9b024441af2233603530c8c982a1de4e2b144a02ec49564f501bcad49e44"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Nightly-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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

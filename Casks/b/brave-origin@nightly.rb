cask "brave-origin@nightly" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "4d0eb282dfd2b91d3aca8ed9c75d3091618b7cc72e90ecfd28647df57e2b837c",
         intel: "c9ca0676ee0a42d9c0fa190e980ebb2a0d5eb59effadd5aabbe20a22a948193e"

  on_arm do
    version "1.102.42.0,202.42"
  end
  on_intel do
    version "1.102.42.0,202.42"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/#{version.csv.second}/Brave-Origin-Nightly-#{arch}.dmg"
  name "Brave Origin Nightly"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#nightly"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin Nightly.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/com.brave.Browser.origin.nightly",
        "~/Library/HTTPStorages/com.brave.Browser.origin.nightly",
        "~/Library/Preferences/com.brave.Browser.origin.nightly.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.nightly.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end

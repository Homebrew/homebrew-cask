cask "brave-browser@nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  sha256 arm:   "d21043096aa8529b01de3cddefacc9100aab506780869b56fac0744bd2297364",
         intel: "1da7d0354ee512641212e98e3de6bc09fd6d29d98bcdd36cd752dca94c1b96a9"

  on_arm do
    version "1.102.22.0,202.22"
  end
  on_intel do
    version "1.102.22.0,202.22"
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

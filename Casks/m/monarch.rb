cask "monarch" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.9.0"
    sha256 "0b5a033060e51d482104013dbde1ac21006cacd9448688b831d785b327ba7e13"

    url "https://storage.googleapis.com/monarchlauncher/v08/#{arch}/monarch-#{version}.dmg",
        verified: "storage.googleapis.com/monarchlauncher/"

    livecheck do
      url "https://storage.googleapis.com/monarchlauncher/v08/#{arch}/latest.json"
      strategy :json do |json|
        json["version"]
      end
    end
  end
  on_intel do
    version "0.7.14"
    sha256 "b627239613200f14a88aab803f21786927bdeac4d2fe59152f960f194f70e82e"

    url "https://storage.googleapis.com/monarchlauncher/#{arch}/monarch-#{version}.dmg",
        verified: "storage.googleapis.com/monarchlauncher/"

    livecheck do
      skip "Legacy version"
    end
  end

  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/com.monarch.macos",
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end

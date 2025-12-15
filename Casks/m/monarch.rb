cask "monarch" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.8.35"
    sha256 "cd07241f8e69a0ab219be0d1cd9178861a0f64cd1241be68c9be83bcc22874cd"

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
      url "https://storage.googleapis.com/monarchlauncher/#{arch}/latest-mac.yml"
      strategy :electron_builder
    end
  end

  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/com.monarch.macos",
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end

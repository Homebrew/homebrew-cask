cask "monarch" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.9.64"
    sha256 "7aafcdf6077e57b8941607395cf922e113eba43c1a93f732dd03b63ee4063899"

    url "https://storage.googleapis.com/monarchlauncher/v08/#{arch}/monarch-#{version}.dmg"

    livecheck do
      url "https://storage.googleapis.com/monarchlauncher/v08/#{arch}/latest.json"
      strategy :json do |json|
        json["version"]
      end
    end

    depends_on macos: :sonoma
  end
  on_intel do
    version "0.7.14"
    sha256 "b627239613200f14a88aab803f21786927bdeac4d2fe59152f960f194f70e82e"

    url "https://storage.googleapis.com/monarchlauncher/#{arch}/monarch-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :monterey
  end

  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  auto_updates true

  app "Monarch.app"

  uninstall quit: "com.monarch.macos"

  zap trash: [
    "~/Library/Application Support/com.monarch.macos",
    "~/Library/Application Support/monarch",
    "~/Library/Caches/com.monarch.macos",
    "~/Library/Preferences/com.monarch.macos.plist",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
    "~/Library/WebKit/com.monarch.macos",
  ]
end

cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2508.2.3"
  sha256 arm:   "73fff7ebbd1a40cbf7ff1bfac1d8ef529517d1e4fa6711d6a40cb95d0ad7091f",
         intel: "a23e49a75db9857cec8940a0511aa1347e9ea87bced4ea18f404f20d5a610417"

  url "https://storage.googleapis.com/dialpad_native/osx/#{arch}/Dialpad.#{version}.zip",
      verified: "storage.googleapis.com/dialpad_native/osx/#{arch}"
  name "Dialpad"
  desc "Cloud communication platform"
  homepage "https://dialpad.com/download"

  livecheck do
    url "https://dialpad.com/native/checkversion/darwin/#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end

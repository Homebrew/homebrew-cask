cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2504.3.1"
    sha256 "18dd8ab38b12feff01262d5251577528bdaef9d266d5e3800e1d864701a786b6"
  end
  on_intel do
    version "2504.3.0"
    sha256 "cf5c35b47aca4f444280bd39e1d2e9d7a3d32a89364561a926f42ad57168dbc3"
  end

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

  depends_on macos: ">= :catalina"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end

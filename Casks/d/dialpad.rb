cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2606.1.2"
  sha256 :no_check

  url "https://download.dialpad.com/osx/#{arch}/dialpad.pkg"
  name "Dialpad"
  desc "Cloud communication platform"
  homepage "https://dialpad.com/download"

  livecheck do
    url "https://dialpad.com/native/checkversion/darwin/#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  pkg "dialpad.pkg"

  uninstall pkgutil: "com.dialpad.Dialpad.pkg"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end

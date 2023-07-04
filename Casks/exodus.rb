cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.7.3"
  sha256 arm:   "1f63f4f45422c88f119bb1ad0443c9e5ea92460cbd8eb1c1c176d65982090b24",
         intel: "e9051f2ed7458735ed52668415c0fb02b26c733b0530b4007095c11f565414e8"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end

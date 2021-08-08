cask "exodus" do
  version "21.8.5"

  if Hardware::CPU.intel?
    sha256 "a43b36bd40d5ce093093d903bddfac9e49ec3a018ef9f3ed654a926a50f6c142"
    url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  else
    sha256 "f9384363c50abeeb72d3a1eed9fc4ac71d587f287b0047b1a962fdd4cc20708b"
    url "https://downloads.exodus.com/releases/exodus-macos-arm64-#{version}.dmg"
  end

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

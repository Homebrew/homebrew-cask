cask "exodus" do
  version "21.7.30"

  if Hardware::CPU.intel?
    sha256 "bd5c2f853f4638645a56e8aa86285af72ec2544a9633e7c29961aba9069824e9"
    url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  else
    sha256 "3cf159a766dc630261db6735b6f50253954b6f2943b47fd02c4bc009bb0825df"
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

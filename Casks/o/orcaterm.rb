cask "orcaterm" do
  version "1.5.0"
  sha256 "a5f0ad5b5cc7ad104b04264c35babba2793abb6214e58bba28b20ed682484d97"

  url "https://orcaterm-desktop-1258344699.cos.ap-guangzhou.myqcloud.com/release/archive/v#{version}/OrcaTerm-#{version}-mac-universal.dmg",
      verified: "orcaterm-desktop-1258344699.cos.ap-guangzhou.myqcloud.com/release/archive/"
  name "OrcaTerm"
  desc "Tencent Cloud intelligent terminal — SSH/SFTP/RDP client built with Tauri"
  homepage "https://orcaterm.cloud.tencent.com/"

  livecheck do
    url "https://orcaterm-desktop-1258344699.cos.ap-guangzhou.myqcloud.com/release/latest/OrcaTerm-latest-mac-universal.dmg"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "OrcaTerm.app"
end

cask "dbx" do
  version "0.5.24"

  on_arm do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_aarch64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "67aec2bbf3d82d1ea1b42719de1dd7bbf3cdab4152334d9884e8d9fabda99edc"
  end

  on_intel do
    url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_x64.dmg",
        verified: "github.com/t8y2/dbx/"
    sha256 "e1078dc50b53c44eafa4c06d41670a79d89b98ed0b1c9e239a944c73aef6d06b"
  end

  name "DBX"
  desc "Lightweight, cross-platform database management tool"
  homepage "https://dbxio.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "DBX.app"

  zap trash: [
    "~/Library/Application Support/com.dbx.app",
    "~/Library/Caches/com.dbx.app",
    "~/Library/Preferences/com.dbx.app.plist",
    "~/Library/Logs/com.dbx.app",
  ]
end

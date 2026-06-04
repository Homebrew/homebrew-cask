cask "easydb" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "f1c063670734ab26c6927a6a9b32555a235a5847f9255819ac0b3e6e125fb73e",
         intel: "c727ef35d3388bdfa3faf3fda6c46ac80f6570feabcfab852139d2bb1ee563ba"

  url "https://github.com/shencangsheng/easydb_app/releases/download/v#{version}/EasyDB_#{version}_#{arch}.dmg"
  name "EasyDB"
  desc "Lightweight desktop data query tool that uses SQL to query local files"
  homepage "https://github.com/shencangsheng/easydb_app"

  app "EasyDB.app"

  zap trash: [
    "~/Library/Application Support/com.easydb.app",
    "~/Library/Caches/com.easydb.app",
    "~/Library/Preferences/com.easydb.app.plist",
    "~/Library/Saved Application State/com.easydb.app.savedState",
  ]
end

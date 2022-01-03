cask "paperpile" do
  version "0.7.2"
  sha256 :no_check

  url "https://paperpile.com/download/desktop/macos-latest"
  name "Paperpile"
  desc "Citation plugin for Microsoft Word"
  homepage "https://paperpile.com/word-plugin/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "Paperpile.app"

  zap trash: [
    "~/Library/Application Support/Paperpile",
    "~/Library/Preferences/com.paperpile.paperpile.plist",
  ]
end

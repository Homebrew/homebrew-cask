cask "texpile" do
  version "2.0.1"
  sha256 "7f32a98a1b7a11b614cbb3b6cac67d37842c8c43d42b0399dfac5083ecb44c94"

  url "https://dl.texpile.com/v#{version}/Texpile-#{version}.dmg"
  name "Texpile"
  desc "Desktop editor for LaTeX, Typst, and Markdown"
  homepage "https://texpile.com/"

  livecheck do
    url "https://dl.texpile.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Texpile.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.texpile.desktop.sfl*",
    "~/Library/Application Support/texpile-desktop",
    "~/Library/Preferences/com.texpile.desktop.plist",
  ]
end

cask "texpile" do
  version "2.0.0"
  sha256 "5bbb83ab7d5ef3ea3fc9d822c75487a1bae68d048816ff7b07b51ae9e6c8f884"

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

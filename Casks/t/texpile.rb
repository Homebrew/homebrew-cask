cask "texpile" do
  version "1.6.2"
  sha256 "223f85b5a849a4cb046be7f9ac7bfa13eab0681be6f1e059acd62b374a34d457"

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
    "~/Library/Application Support/texpile-desktop",
    "~/Library/Preferences/com.texpile.desktop.plist",
  ]
end

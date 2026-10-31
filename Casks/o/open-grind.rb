cask "open-grind" do
  version "0.1.0-rc.1"
  sha256 "c107ac969cbcbcf30c5fcc684553f5bf7a5547889c78a75c2cc31b0032d43a38"

  url "https://git.opengrind.org/open-grind/open-grind/releases/download/v#{version}/open-grind-v#{version}-macos.zip"
  name "Open Grind"
  desc "Unofficial FLOSS Grindr client"
  homepage "https://opengrind.org/"

  livecheck do
    url "https://git.opengrind.org/open-grind/open-grind.git"
    regex(/^v?(\d+(?:\.\d+)+(?:-[a-z]+(?:\.\d+)+)?)$/i)
    strategy :git
  end

  auto_updates true
  depends_on :macos

  app "Open Grind.app"

  zap trash: [
    "~/Library/Application Support/org.opengrind{,.app}",
    "~/Library/Caches/org.opengrind{,.app}",
    "~/Library/Preferences/org.opengrind{,.app}.plist",
    "~/Library/WebKit/org.opengrind{,.app}",
  ]
end

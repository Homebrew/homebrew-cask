cask "pd-l2ork" do
  version "2.20.1"
  sha256 "65c1c41a0eb4eaa1b439785fcfa0ccc7698a1b95c29277b2179d941ec9afad05"

  url "https://github.com/agraef/purr-data/releases/download/#{version.csv.first}/purr-data-#{version.csv.first}-macos-x86_64.zip",
      verified: "github.com/agraef/purr-data/"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Programming environment for computer music and multimedia applications"
  homepage "https://agraef.github.io/purr-data/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Purr-Data.app"
  binary "#{appdir}/Purr-Data.app/Contents/Resources/app.nw/bin/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Purr-Data.app", "0777"
  end

  zap trash: [
    "~/Library/Application Support/Purr-Data",
    "~/Library/Logs/Purr-Data",
    "~/Library/Purr-Data",
  ]

  caveats do
    requires_rosetta
  end
end

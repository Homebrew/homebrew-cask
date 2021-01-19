cask "nndd" do
  version "2.4.3,62201"
  sha256 "bedf7c58f89ccc9fa980f7f392304072a66c841a33cffd409961ba61cd580c10"

  url "https://osdn.net/projects/nndd/downloads/#{version.after_comma}/NNDD_v#{version.before_comma.dots_to_underscores}.dmg"
  appcast "https://ja.osdn.net/projects/nndd/releases/rss"
  name "NNDD"
  homepage "https://osdn.jp/projects/nndd/"

  depends_on cask: "adobe-air"

  app "NNDD.app"

  preflight do
    system_command staged_path.join("Install NNDD.app/Contents/MacOS/Install NNDD"),
                   args: ["-silent", "-eulaAccepted", "-location", staged_path]
  end
end

cask "extraterm" do
  version "0.81.3"
  sha256 "6e8b91365a51311817becead7a11946e72698dcbb75dc948ec107034333a1036"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "Extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm*.plist",
  ]

  caveats do
    requires_rosetta
  end
end

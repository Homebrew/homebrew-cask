cask "chrysalis" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "x64.AppImage"

  version "0.13.3"

  on_macos do
    sha256 "307c17836e901fb26bccfdbfad50744ea1b3c00536306c1dd06a63c430602f06"

    app "Chrysalis.app"

    zap trash: [
      "~/Library/Application Support/chrysalis",
      "~/Library/Preferences/keyboardio.chrysalis.plist",
    ]
  end
  on_linux do
    sha256 "7d3fb145a21bd1644d344c4e3c88c87390fdd9efe2c4fde4c584ec6099cb1339"

    depends_on arch: :x86_64

    app_image "Chrysalis-#{version}-x64.AppImage", target: "Chrysalis.AppImage"
  end

  url "https://github.com/keyboardio/Chrysalis/releases/download/v#{version}/Chrysalis-#{version}-#{url_end}"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  # This uses a regex that specifically matches versions from release tag links
  # for this repository only. A description for a previous release linked to a
  # tag in a different repository, which led to an incorrect version match.
  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end
end

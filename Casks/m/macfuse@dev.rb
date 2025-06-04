cask "macfuse@dev" do
  version "5.0.2"
  sha256 "5d0b1367b654f49e24cec4178a247adf93f0cd37aa931771cbfec35bd2bc27b0"

  url "https://github.com/macfuse/macfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/macfuse/macfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://macfuse.github.io/"

  livecheck do
    url "https://macfuse.github.io/releases/DeveloperRelease.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='Version']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true
  conflicts_with cask: "macfuse"
  depends_on macos: ">= :sierra"

  pkg "Extras/macFUSE #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall launchctl: [
              "io.macfuse.app.launchservice.broker",
              "io.macfuse.app.launchservice.daemon",
            ],
            pkgutil:   [
              "io.macfuse.installer.components.core",
              "io.macfuse.installer.components.preferencepane",
            ]

  zap trash: "/Library/PreferencePanes/macFUSE.prefPane"

  caveats do
    kext
  end
end

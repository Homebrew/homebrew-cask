cask "macfuse" do
  version "5.0.7"
  sha256 "ce8ddf7bd00fb7b333ffb6598a455507880dd560fa46da21a56a2312623bf295"

  url "https://github.com/macfuse/macfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/macfuse/macfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://macfuse.github.io/"

  livecheck do
    url "https://macfuse.github.io/releases/CurrentRelease.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='Version']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true
  conflicts_with cask: "macfuse@dev"

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

  zap trash: [
    "/Library/PreferencePanes/macFUSE.prefPane",
    "~/Library/Caches/io.macfuse.preferencepanes.macfuse",
    "~/Library/HTTPStorages/io.macfuse.preferencepanes.macfuse",
  ]

  caveats do
    kext
  end
end

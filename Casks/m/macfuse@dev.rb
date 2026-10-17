cask "macfuse@dev" do
  version "5.5.0"
  sha256 "92c21ef2db4199bcf5bddc8e6efb57b23ecb9715f74ab38cba2c77ab226d3830"

  url "https://github.com/macfuse/macfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg"
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
  depends_on :macos

  pkg "Extras/macFUSE #{version}.pkg"

  postflight_steps do
    set_ownership ["/usr/local/include", "/usr/local/lib"], recursive: false
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

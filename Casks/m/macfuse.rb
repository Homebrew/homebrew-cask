cask "macfuse" do
  version "5.0.6"
  sha256 "388b92df38fa32bb98b9edbe5cdabb02361c4f7843fbe4067e589b91b714aa3f"

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
  depends_on macos: ">= :sierra"

  pkg "Extras/macFUSE #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
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

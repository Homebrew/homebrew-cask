cask "macfuse@dev" do
  version "4.10.1"
  sha256 "a523fcc910534ce7d8c616c5eef2e5026ee36440510df4bdd9477c44744ae6bf"

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

  uninstall pkgutil: [
    "io.macfuse.installer.components.core",
    "io.macfuse.installer.components.preferencepane",
  ]

  zap trash: "/Library/PreferencePanes/macFUSE.prefPane"

  caveats do
    kext
  end
end

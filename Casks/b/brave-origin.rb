cask "brave-origin" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.98.60.0"
  sha256 arm:   "be113655c06ed41fae1c00ad6d55e9ea1783c82811581cece4ee79082ba55884",
         intel: "980974a89037753dd027f6b0c9bbf66f50dba3739c22432abb51d6772bcb2a2c"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-#{arch}.dmg"
  name "Brave Origin"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin",
        "~/Library/Caches/BraveSoftware/Brave-Origin",
        "~/Library/Caches/com.brave.Browser.origin",
        "~/Library/HTTPStorages/com.brave.Browser.origin",
        "~/Library/Preferences/com.brave.Browser.origin.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end

cask "elgato-wave-link" do
  version "1.7.1.3162"
  sha256 "96d3b0656933ff93fc0303e262a304d36163cf6714f232702ecd3e3ddae49300"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch}/WaveLink_#{version}.pkg",
      user_agent: :fake
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/en/wave-1"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/WaveLink[._-]v?(\d+(?:[._]\d+)+)\.pkg"}i)
  end

  depends_on macos: ">= :catalina"

  pkg "WaveLink_#{version}.pkg"

  uninstall delete:    "/Applications/Elgato Wave Link.app",
            launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end

cask "obs-ndi" do
  version "4.13.0"
  sha256 "0a18604d710734d3d07a1a4dc8ff2007027444b16944341e84b408546d95272e"

  url "https://github.com/obs-ndi/obs-ndi/releases/download/#{version}/obs-ndi-#{version}-macos-universal.pkg"
  name "obs-ndi"
  desc "NDI integration for OBS Studio"
  homepage "https://github.com/obs-ndi/obs-ndi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "libndi"

  pkg "obs-ndi-#{version}-macOS-universal.pkg"

  uninstall pkgutil: [
    "com.newtek.ndi.runtime",
    "fr.palakis.obs-ndi",
    "'fr.palakis.obs-ndi'",
  ]

  # No zap stanza required
end

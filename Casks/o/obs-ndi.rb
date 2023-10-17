cask "obs-ndi" do
  version "4.11.1"
  sha256 "e2008e9ce970fdb5edeb6f24c50526eef1e383776ffcc52f7bb6ee8ea1116ea2"

  url "https://github.com/obs-ndi/obs-ndi/releases/download/#{version}/obs-ndi-#{version}-macos-universal.pkg"
  name "obs-ndi"
  desc "NewTek NDI integration for OBS Studio"
  homepage "https://github.com/obs-ndi/obs-ndi"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "obs-ndi-#{version}-macOS-universal.pkg"

  uninstall pkgutil: [
    "com.newtek.ndi.runtime",
    "fr.palakis.obs-ndi",
  ]
end

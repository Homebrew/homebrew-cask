cask "obs-ndi" do
  version "4.9.0"
  sha256 "b70b379fb34321188d5eca3bd36784aed4659eacad839af56cf0fe30acf88976"

  url "https://github.com/Palakis/obs-ndi/releases/download/#{version}/obs-ndi-#{version}-macOS.pkg"
  name "obs-ndi"
  desc "NewTek NDI integration for OBS Studio"
  homepage "https://github.com/Palakis/obs-ndi"

  livecheck do
    url "https://github.com/Palakis/obs-ndi/releases/"
    strategy :page_match
    regex(/obs[._-]?ndi[._-]?(\d+(?:\.\d+)*)[._-]?macOS\.pkg/i)
  end

  pkg "obs-ndi-#{version}-macOS.pkg"

  uninstall pkgutil: [
    "com.newtek.ndi.runtime",
    "fr.palakis.obs-ndi",
  ]
end

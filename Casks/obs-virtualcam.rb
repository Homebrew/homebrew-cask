cask "obs-virtualcam" do
  version "1.3.1,5bf3231"
  sha256 "3b793ee5e55a834c97775e049e8707857b37da810ffa73bbb1e26196a0427aee"

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.csv.first}/obs-mac-virtualcam-#{version.csv.second}-v#{version.csv.first}.pkg"
  name "OBS Virtual Camera"
  homepage "https://github.com/johnboiles/obs-mac-virtualcam"

  depends_on macos: ">= :high_sierra"

  pkg "obs-mac-virtualcam-#{version.csv.second}-v#{version.csv.first}.pkg"

  uninstall pkgutil: "com.johnboiles.obs-mac-virtualcam"

  caveats do
    discontinued
  end
end

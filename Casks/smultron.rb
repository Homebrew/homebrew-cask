cask "smultron" do
  version "12.4.3,12430"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.peterborgapps.com/downloads/Smultron#{version.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Smultron.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.Smultron#{version.major}",
    "~/Library/Containers/com.peterborgapps.Smultron#{version.major}",
  ]
end

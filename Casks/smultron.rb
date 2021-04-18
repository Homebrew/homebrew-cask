cask "smultron" do
  version "12.4.1"
  sha256 "69dcf20c5e6aaca876d960df09bcd9e339d0c072890e045c4045fc7155e8d3f3"

  url "https://www.peterborgapps.com/downloads/Smultron#{version.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Smultron.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.Smultron#{version.major}",
    "~/Library/Containers/com.peterborgapps.Smultron#{version.major}",
  ]
end

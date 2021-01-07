cask "smultron" do
  version "12.2.5,12250"
  sha256 "4fd4a60746bf49bab5aeff124ff36e5506e71dd3ab768d72cdcd817bb0147c6e"

  url "https://www.peterborgapps.com/downloads/Smultron#{version.before_comma.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  depends_on macos: ">= :mojave"

  app "Smultron.app"

  zap trash: "~/Library/Containers/com.peterborgapps.Smultron#{version.before_comma.major}"
end

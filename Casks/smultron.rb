cask "smultron" do
  version "12.2.5,12250"
  sha256 :no_check

  url "https://www.peterborgapps.com/downloads/Smultron#{version.before_comma.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  depends_on macos: ">= :mojave"

  app "Smultron.app"

  zap trash: "~/Library/Containers/com.peterborgapps.Smultron#{version.before_comma.major}"
end

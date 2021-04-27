cask "fawkes" do
  version "1.0"
  sha256 "83eb4f646cbe8ef31c7aa9b92877f371c9022fd64b5f3048b300e6f7f30db48b"

  url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-#{version}.dmg"
  name "Fawkes"
  desc "Cloaks picture files to circumvent facial recognition"
  homepage "http://sandlab.cs.uchicago.edu/fawkes/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Fawkes-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Fawkes.app"

  zap trash: [
    "~/Library/Preferences/Fawkes.plist",
    "~/Library/Saved Application State/Fawkes.savedState",
    "~/.fawkes",
  ]
end

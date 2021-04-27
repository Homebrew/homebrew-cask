cask "fawkes" do
  version "1.0"
  sha256 "2dc8c1f4087908b08ba1bf1b49ec7716004fa0004a3a7ce2cd7dd9fb2ff135bf"

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

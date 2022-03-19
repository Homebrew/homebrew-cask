cask "fawkes" do
  version "1.0"
  sha256 "115b57a13047b405be3e3cae28930eab8c19724c76d86ad63faeb6d6dc7e7f39"

  url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-#{version}.dmg"
  name "Fawkes"
  desc "Cloaks picture files to circumvent facial recognition"
  homepage "https://sandlab.cs.uchicago.edu/fawkes/"

  livecheck do
    url "http://sandlab.cs.uchicago.edu/fawkes/"
    regex(%r{href=.*?/Fawkes-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Fawkes.app"

  zap trash: [
    "~/.fawkes",
    "~/Library/Preferences/Fawkes.plist",
    "~/Library/Saved Application State/Fawkes.savedState",
  ]
end

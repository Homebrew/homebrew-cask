cask "fawkes" do
  version "1.0"

  on_intel do
    sha256 "115b57a13047b405be3e3cae28930eab8c19724c76d86ad63faeb6d6dc7e7f39"
    url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-#{version}.dmg"
  end
  on_arm do
    sha256 "f7afba97843819308ea15f89a273de9e95ef6d080159ce1ba1ddc41d5c4a932d"
    url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-m1.dmg"
  end

  name "Fawkes"
  desc "Cloaks picture files to circumvent facial recognition"
  homepage "https://sandlab.cs.uchicago.edu/fawkes/"

  livecheck do
    url "https://sandlab.cs.uchicago.edu/fawkes/"
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

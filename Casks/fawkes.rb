cask "fawkes" do
  version "0.3.1"
  sha256 "7101ecb08e9ce319c66f1e6dae25443a3175917eaa48feeaf17b1864f91ab6f8"

  url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-#{version}.dmg"
  name "Fawkes"
  desc "Cloaks picture files to circumvent facial recognition"
  homepage "https://sandlab.cs.uchicago.edu/fawkes/"

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

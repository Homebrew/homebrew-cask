cask "fawkes" do
  version "0.3.1"
  sha256 "7101ecb08e9ce319c66f1e6dae25443a3175917eaa48feeaf17b1864f91ab6f8"

  url "https://mirror.cs.uchicago.edu/fawkes/files/#{version.major_minor}/Fawkes-#{version}.dmg",
      verified: "sandlab.cs.uchicago.edu/fawkes/"
  appcast "https://github.com/Shawn-Shan/fawkes/tags.atom",
          must_contain: version.major_minor
  name "Fawkes"
  desc "Cloaks picture files to circumvent facial recognition"
  homepage "https://sandlab.cs.uchicago.edu/fawkes/"

  app "Fawkes.app"

  zap trash: [
    "~/Library/Preferences/Fawkes.plist",
    "~/Library/Saved Application State/Fawkes.savedState",
    "~/.fawkes",
  ]
end

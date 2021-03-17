cask "micro-sniff" do
  version "1.2.0"
  sha256 "92dbcad769340ab0df851483942003eaa6eaab388773408ef3191edce19b5bbe"

  url "https://github.com/dwarvesf/micro-sniff/releases/download/v#{version}/Micro.Sniff.#{version}.dmg"
  name "Micro Sniff"
  desc "Monitor microphone activity"
  homepage "https://github.com/dwarvesf/micro-sniff"

  depends_on macos: ">= :sierra"

  app "Micro Sniff.app"

  zap trash: [
    "~/Library/Application Scripts/foundation.dwarves.microsniff",
    "~/Library/Application Scripts/foundation.dwarves.microsnifflauncher",
    "~/Library/Containers/foundation.dwarves.microsniff",
    "~/Library/Containers/foundation.dwarves.microsnifflauncher",
  ]
end

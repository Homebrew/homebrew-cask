cask "micro-sniff" do
  version "1.0.0"
  sha256 "fbfd7eccc2de7fc9d5d5a4062057791850fdcedb4b14ec04538cfabce263aa5f"

  url "https://github.com/dwarvesf/micro-sniff/releases/download/v#{version}/Micro.Sniff.#{version}.dmg"
  name "Micro Sniff"
  desc "This application allows you to monitor your Mac's microphone activity."
  homepage "https://github.com/dwarvesf/micro-sniff"

    livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Micro\ Sniff.app", target: "Micro\ Sniff.app"
end

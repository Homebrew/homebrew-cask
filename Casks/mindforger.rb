cask "mindforger" do
  version "1.52.0"
  sha256 "bae855dad678b54a557829877320ee892958be0e20de8661a6d4ee7e3b62bcd0"

  url "https://github.com/dvorka/mindforger/releases/download/#{version}/mindforger-macos-#{version}.dmg",
      verified: "github.com/dvorka/mindforger/"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  app "mindforger.app"
end

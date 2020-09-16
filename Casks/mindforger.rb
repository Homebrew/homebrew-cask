cask "mindforger" do
  version "1.52.0"
  sha256 "bae855dad678b54a557829877320ee892958be0e20de8661a6d4ee7e3b62bcd0"

  # github.com/dvorka/mindforger/ was verified as official when first introduced to the cask
  url "https://github.com/dvorka/mindforger/releases/download/#{version}/mindforger-macos-#{version}.dmg"
  appcast "https://github.com/dvorka/mindforger/releases.atom"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  app "mindforger.app"
end

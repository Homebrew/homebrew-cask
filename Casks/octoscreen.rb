cask "octoscreen" do
  version "1.0.0"
  sha256 "571ea878dc807c055e5a16696e6534bef0412da50365fb3f11baab898d1fd021"

  url "https://github.com/orderedlist/octoscreen/releases/download/#{version}/Octoscreen.saver.zip"
  appcast "https://github.com/orderedlist/octoscreen/releases.atom"
  name "Octoscreen"
  homepage "https://github.com/orderedlist/octoscreen"

  screen_saver "Octoscreen.saver"

  zap trash: "~/Library/Caches/Octoscreen"
end

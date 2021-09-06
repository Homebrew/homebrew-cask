cask "pomello" do
  version "0.10.16"
  sha256 :no_check

  url "https://pomelloapp.com/download/mac/latest"
  name "Pomello"
  desc "Turns your Trello cards into Pomodoro tasks"
  homepage "https://pomelloapp.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Pomello.app"
end

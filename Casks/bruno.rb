cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "31dfbf0979cef04528e84dfe112252bc281b5495979c1a4fbdedd50ef33ba843",
         intel: "f206848edcce76629644d98b642a1a05606d1289c1eab328dd37bf11eb87ce7d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  app "Bruno.app"
end

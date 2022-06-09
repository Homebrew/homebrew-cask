cask "ecamm-live" do
  version "3.10.2"
  sha256 :no_check

  url "https://kxcdn.ecamm.com/EcammLive.zip"
  name "Ecamm Live"
  desc "Live streaming & video production studio"
  homepage "https://www.ecamm.com/"

  app "Ecamm Live v#{version}/Ecamm Live.app"
end

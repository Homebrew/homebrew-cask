cask "blink1control" do
  version "2.2.9"
  arch arm: "arm64"
  arch intel: "x64"
  sha512
   sha512 arm:   "FJsSMLEhw15CauZ1gM/ALsJDqDMQxZZCeOjSIuhuiswR+pi63+NrVlsp2C5MBESEEFnr0vD4rek8k7Ufd9SW0Q=="
   sha512 intel: "MxBa22/EdYaptnj/0pRc+x6gMdRtE7MApvU+zOK7AAIHy0TpLBnnDpCHzkuZpTWoInzojSuaD+2/XxCLiy72eg=="
         
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac-#{arch}.dmg",
      verified: "github.com/todbot/Blink1Control2/"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blink1Control#{version.major}.app"
end

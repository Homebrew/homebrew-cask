cask "a-slower-speed-of-light" do
  version "2020"
  sha256 "207513b33b7198c0f3106de510a13960434cb1c177fccc062d4e53cfbf981543"

  url "https://web.mit.edu/gambit/summer12/speedoflight/#{version}/A_Slower_Speed_of_Light.dmg"
  name "A Slower Speed of Light"
  desc "First-person game"
  homepage "https://gamelab.mit.edu/games/a-slower-speed-of-light/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "A Slower Speed of Light.app"
end

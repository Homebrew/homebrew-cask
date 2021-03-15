cask "mochi" do
  version "1.9.5"
  sha256 "0d9f1f801cc3a02094397be74d5bf5e89c7f2db219698a2a219ee1112d7cc9a4"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  name "Mochi"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Mochi-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Mochi.app"
end

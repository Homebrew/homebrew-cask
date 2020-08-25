cask "hand-mirror" do
  version "1.3.1"
  sha256 "0c88e844d5161f093e374ef0e89c0eeddf589eab2db7e5b2c15c810255496167"

  url "https://handmirror.app/Hand%20Mirror%20#{version}.dmg"
  name "Hand Mirror"
  homepage "https://handmirror.app/"

  depends_on macos: ">= :catalina"

  app "Hand Mirror.app"
end

cask "fliqlo" do
  version "1.8.3"
  sha256 "404ae225ae9369d466f4d45ce50986ea7433b975b2ca0e5ea398482c3e05530a"

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: "https://fliqlo.com/#about"
  name "Fliqlo"
  homepage "https://fliqlo.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Fliqlo%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  screen_saver "Fliqlo.saver"
end

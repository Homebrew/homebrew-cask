cask "starsector" do
  version "0.95a-RC15"
  sha256 "355c36a6bd7f027c6b719429c985074ce347c3daddeee1ecf6eabb69a5937ae6"

  url "https://s3.amazonaws.com/fractalsoftworks/starsector/starsector_mac-#{version}.zip",
      verified: "s3.amazonaws.com/fractalsoftworks/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  livecheck do
    url "https://fractalsoftworks.com/preorder/"
    strategy :page_match
    regex(%r{href=.*?/starsector_mac-(\d+(?:\.\d+)*a-RC\d+)\.zip}i)
  end

  app "Starsector.app"
end

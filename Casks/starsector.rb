cask "starsector" do
  version "0.9.1a-RC8"
  sha256 "b11e2d15c5ce16572ac8731f2ab649183a3f285b39ea6c8dc74ece7b8dc9fc78"

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

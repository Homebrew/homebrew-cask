cask "starsector" do
  version "0.95a-RC11"
  sha256 "a64c19b8601365f983155544974ee8105971169b230f1729b81683808c9f397e"

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

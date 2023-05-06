cask "starsector" do
  version "0.96a-RC8"
  sha256 "b13b6742de7ef424a232a1360a35d35be08504ac2945fcd85dc8f7762ad9a3dd"

  url "https://s3.amazonaws.com/fractalsoftworks/starsector/starsector_mac-#{version}.zip",
      verified: "s3.amazonaws.com/fractalsoftworks/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  livecheck do
    url "https://fractalsoftworks.com/preorder/"
    regex(/href=.*?starsector_mac[._-]v?(\d+(?:\.\d+)+[\w._-]+)\.zip/i)
  end

  app "Starsector.app"
end

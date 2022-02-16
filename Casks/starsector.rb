cask "starsector" do
  version "0.95.1a-RC6"
  sha256 "fac284c08fe3905f6a1f37cefcb24c790c7450d2ebc6468bc138f4e47262fcc9"

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

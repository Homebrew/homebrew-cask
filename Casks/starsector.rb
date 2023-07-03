cask "starsector" do
  version "0.96a-RC10"
  sha256 "1c31651c3bc62c5fbf3dbc0619659588ab620278e9fa2107d8cbfba12d2ae810"

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

  # No zap stanza required
end

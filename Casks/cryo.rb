cask "cryo" do
  version "0.5.22"
  sha256 "1399b7b0cd61b27858237dc4f21907069b1431ae9135d3203c64b206d6060dd9"

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  name "cryo"
  homepage "https://cryonet.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/cryo_(\d+(?:\.\d+)*)_macos\.zip}i)
  end

  app "cryo.app"
end

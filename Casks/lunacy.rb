cask "lunacy" do
  version "9.0.0"
  sha256 "70fe5a7354aae2a883721555fefbb9f4d7b57d5ee9be55fa3f20bd8647c8916e"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end

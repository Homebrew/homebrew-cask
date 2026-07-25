cask "font-paperlogy" do
  version "1.001"
  sha256 "6ffa5c8fc7539c61f419dcd2c4dd714556412f2455d26399e83792968c7b23d6"

  url "https://github.com/Freesentation/paperlogy/raw/main/Paperlogy-#{version}.zip",
      verified: "github.com/Freesentation/paperlogy/"
  name "Paperlogy"
  name "페이퍼로지"
  homepage "https://freesentation.blog/paperlogyfont"

  livecheck do
    url :homepage
    regex(/Paperlogy[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "Paperlogy-1Thin.ttf"
  font "Paperlogy-2ExtraLight.ttf"
  font "Paperlogy-3Light.ttf"
  font "Paperlogy-4Regular.ttf"
  font "Paperlogy-5Medium.ttf"
  font "Paperlogy-6SemiBold.ttf"
  font "Paperlogy-7Bold.ttf"
  font "Paperlogy-8ExtraBold.ttf"
  font "Paperlogy-9Black.ttf"

  # No zap stanza required
end

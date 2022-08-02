cask "horos" do
  if MacOS.version <= :el_capitan
    version "2.0.2"
    sha256 "5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08"
  else
    version "4.0.0"
    sha256 "b0ea0ac8793ee1e343c815f5e2bfbeba01ea713181c2c66ad69b73fbed69a902"
  end

  url "https://horosproject.org/horos-content/Horos#{version}.dmg"
  name "Horos"
  desc "Medical image viewer"
  homepage "https://horosproject.org/"

  livecheck do
    url "https://horosproject.org/horos-content/"
    regex(/href=.*?Horosv?(\d+(?:.\d+)+)\.dmg/i)
  end

  app "Horos.app"
end

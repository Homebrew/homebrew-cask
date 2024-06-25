cask "horos" do
  arch arm: "arm64"

  on_arm do
    version "4.0.1"
    sha256 "16c6c4dee3f12138096781af438bcdf12baf6c0b63499ce110eb58600b85c4a3"

    url "https://horosproject.org/horos-content/Horos_#{version}_#{arch}.dmg"
  end
  on_intel do
    on_el_capitan :or_older do
      version "2.0.2"
      sha256 "5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08"
    end
    on_sierra :or_newer do
      version "4.0.0"
      sha256 "b0ea0ac8793ee1e343c815f5e2bfbeba01ea713181c2c66ad69b73fbed69a902"
    end

    url "https://horosproject.org/horos-content/Horos#{version}#{arch}.dmg"
  end

  name "Horos"
  desc "Medical image viewer"
  homepage "https://horosproject.org/"

  livecheck do
    url "https://horosproject.org/horos-content/"
    regex(/href=.*?Horos[._-]?v?(\d+(?:.\d+)+)[._-]?#{arch}\.dmg/i)
  end

  app "Horos.app"

  zap trash: [
    "~/Library/Application Support/Horos",
    "~/Library/Caches/org.horosproject.horos",
    "~/Library/HTTPStorages/org.horosproject.horos",
    "~/Library/Preferences/org.horosproject.horos.plist",
    "~/Library/Saved Application State/org.horosproject.horos.savedState",
  ]
end

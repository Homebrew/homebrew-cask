cask "itsycal" do
  on_el_capitan :or_older do
    version "0.10.16"
    sha256 "dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c"

    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip",
        verified: "itsycal.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "0.11.17"
    sha256 "fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11"

    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip",
        verified: "itsycal.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "0.11.17"
    sha256 "fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11"

    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip",
        verified: "itsycal.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "0.13.4"
    sha256 "35509500d22571a4b5e6b48d9de5740a1bcf7d74808d1218d31daf77ddd04a66"

    url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip",
        verified: "itsycal.s3.amazonaws.com/"

    livecheck do
      url "https://itsycal.s3.amazonaws.com/itsycal.xml"
      strategy :sparkle, &:short_version
    end

    depends_on macos: ">= :mojave"
  end

  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  auto_updates true

  app "Itsycal.app"

  zap trash: "~/Library/Preferences/com.mowglii.ItsycalApp.plist"
end

cask "data-science-studio" do
  arch arm: "-arm64"

  on_arm do
    version "15.0.1"
    sha256 "db79190f424b991af11749c5a17f4f53cc2d005bdc596e9ca315edf58261b1f2"

    livecheck do
      url "https://cdn.downloads.dataiku.com/public/launcher/macos/latest-mac.yml"
      strategy :electron_builder
    end

    depends_on macos: :monterey
  end
  on_intel do
    version "14.0.3"
    sha256 "56a687b84efb970d21ae0d6f0c377814e42d8e81b95b6004eac3020678d892b7"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :big_sur
  end

  url "https://cdn.downloads.dataiku.com/public/launcher/macos/DataScienceStudio-#{version}#{arch}-mac.zip"
  name "Dataiku Data Science Studio"
  desc "Quick experimentation and operationalization for machine learning at scale"
  homepage "https://www.dataiku.com/"

  app "DataScienceStudio.app"

  uninstall quit: "com.dataiku.datasciencestudio"

  zap trash: [
    "~/Library/Application Support/DataikuLauncher",
    "~/Library/DataScienceStudio",
    "~/Library/Preferences/com.dataiku.datasciencestudio.plist",
    "~/Library/Saved Application State/com.dataiku.datasciencestudio.savedState",
  ]
end

cask "northern-softworks-cache-cleaner" do
  sha256 :no_check

  on_mojave :or_older do
    version "12.0.6"

    url "https://www.northernsoftworks.com/legacy/mcc.dmg"
  end
  on_catalina do
    version "15.0.6"

    url "https://www.northernsoftworks.com/legacy/ccc-final.dmg"
  end
  on_big_sur do
    version "16.1.7"

    url "https://www.northernsoftworks.com/legacy/bscc-final.dmg"
  end
  on_monterey do
    version "17.0.5"

    url "https://www.northernsoftworks.com/legacy/mcc2022.dmg"
  end
  on_ventura do
    version "18.0.7"

    url "https://www.northernsoftworks.com/legacy/vcc180007.dmg"
  end
  on_sonoma do
    version "19.0.6"

    url "https://www.northernsoftworks.com/legacy/nscc190006.dmg"
  end
  on_sequoia :or_newer do
    version "20.0"

    url "https://www.northernsoftworks.com/downloads/nscc.dmg"
  end

  name "Northern Softworks Cache Cleaner"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/cachecleanerfeatures.html"

  livecheck do
    url "https://www.northernsoftworks.com/support.html"
    regex(/#{MacOS.version.pretty_name}\s*Cache\s*Cleaner\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: [
    :mojave,
    :catalina,
    :big_sur,
    :monterey,
    :ventura,
    :sonoma,
    :sequoia,
  ]

  app "#{MacOS.version.pretty_name} Cache Cleaner.app"

  zap trash: [
    "~/Library/Application Support/com.northernsw.nswCacheCleaner",
    "~/Library/Preferences/Sonoma Cache Cleaner Preferences",
    "~/Library/Preferences/Ventura Cache Cleaner Preferences",
    "~/Library/Saved Application State/com.northernsw.nswCacheCleaner.savedState",
  ]
end

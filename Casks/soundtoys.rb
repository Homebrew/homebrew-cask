cask "soundtoys" do
  version "5.3.8.16762"
  sha256 "ed60fe3a9f613055b486a6c742505db0f8e80827edde5d9a8be8fd2bc8b3b13b"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/Soundtoys#{version.major}_#{version}.dmg",
      verified: "https://storage.googleapis.com/soundtoys-download/"
  name "Soundtoys"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :page_match do |page|
      JSON.parse(page)["Soundtoys5_Mac"]["fullversion"]
    end
  end

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil:   ["com.soundtoys.*", "com.paceap.pkg.eden.*"],
            launchctl: ["com.paceap.eden.licensed", "com.paceap.eden.licensed.agent"]
end

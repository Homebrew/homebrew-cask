cask "soundtoys" do
  version "5.3.9.16828"
  sha256 "8c9d6243f1511952c79769030383b06afeb36ad688d303366e10b1c4eea450e5"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/Soundtoys#{version.major}_#{version}.dmg",
      verified: "https://storage.googleapis.com/soundtoys-download/"
  name "Soundtoys"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json["Soundtoys5_Mac"]["fullversion"]
    end
  end

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil:   ["com.soundtoys.*", "com.paceap.pkg.eden.*"],
            launchctl: ["com.paceap.eden.licensed", "com.paceap.eden.licensed.agent"]
end

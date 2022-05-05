cask "soundtoys" do
  version "5.3.7.16421"
  sha256 "5f11f1c6f7d7ecaa7e988c8d34f45b7ef907d9c8165cf6072cb06a3c4a1fbe92"

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

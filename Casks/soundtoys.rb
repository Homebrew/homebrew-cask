cask "soundtoys" do
  version "5.4.0.17121"
  sha256 "95dc6e925e16672f6d5bdae9e55b34d1da6edbc8bf88283b0bbe99f422b14cb8"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/SoundtoysV#{version.major_minor.no_dots}Bundle_#{version}.dmg",
      verified: "storage.googleapis.com/soundtoys-download/versions/"
  name "Soundtoys"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json["SoundtoysV#{version.major_minor.no_dots}Bundle_Mac"]["fullversion"]
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Install Soundtoys #{version.major_minor} Bundle.pkg"

  uninstall pkgutil:   [
              "com.paceap.pkg.eden.*",
              "com.soundtoys.*",
            ],
            launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ]
end

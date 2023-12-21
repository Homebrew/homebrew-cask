cask "soundtoys" do
  version "5.4.1.17134"
  sha256 "06429b929e12334f8b1ba34513e111d4abf50ad8cb75d008fb6c6db560d33156"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/SoundtoysV#{version.major_minor.no_dots}Bundle_#{version}.dmg",
      verified: "storage.googleapis.com/soundtoys-download/versions/"
  name "Soundtoys"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json.map do |key, item|
        next unless key.match?(/Soundtoys.*?[._-]Mac/i)

        item["fullversion"]
      end
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Install Soundtoys #{version.major_minor} Bundle.pkg"

  uninstall launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ],
            pkgutil:   [
              "com.paceap.pkg.eden.*",
              "com.soundtoys.*",
            ]
end

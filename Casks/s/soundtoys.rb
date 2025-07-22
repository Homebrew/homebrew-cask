cask "soundtoys" do
  version "5.5.2.18740"
  sha256 "d06bbe5fb012be144a9f2a180c56dcb606c8be6b4ea4b1d63569d24ae933635c"

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

  # The Soundtoys application bundles the install of the iLok License Manager
  # this is often shared with other applications and should not be removed
  # it also isn't removed by the Soundtoys uninstaller
  # pkgutil: "com.paceap.pkg.*"
  # launchctl: "com.paceap.eden.*"
  # delete: "/usr/local/bin/iloktool"
  uninstall pkgutil: "com.soundtoys.*"

  zap trash: "~/Library/Saved Application State/com.soundtoys.RemoveSoundtoys.savedState"
end

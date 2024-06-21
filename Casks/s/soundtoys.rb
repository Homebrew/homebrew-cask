cask "soundtoys" do
  version "5.4.3.17500"
  sha256 "0c1427c2a4172cd943f37e5a1753dd87023d620a75aecb2c0107f63a9f1ad5dc"

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

  uninstall pkgutil: "com.soundtoys.*"

  zap trash: "~/Library/Saved Application State/com.soundtoys.RemoveSoundtoys.savedState"
end

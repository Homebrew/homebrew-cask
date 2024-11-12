cask "noxappplayer" do
  version "3.8.5.7,20211216,23d583db237f4401b01bd0f549acfda1"
  sha256 "733ec0b6b53114f60f178195fcd91fe24e3ea2304ab4e16d62f0c0d3f28029c7"

  url "https://res06.bignox.com/full/#{version.csv.second}/#{version.csv.third}.dmg?filename=NoxInstaller_#{version.csv.first}_en.dmg"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  livecheck do
    url "https://www.bignox.com/en/download/fullPackage/mac_fullzip"
    regex(%r{/(\d+)/([^/]+)\.dmg\?filename=NoxInstaller_(\d+(?:\.\d+)*)_en\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"

  zap trash: [
    "~/Library/Application Support/NoxAppPlayer",
    "~/Library/Saved Application State/com.nox.NoxAppPlayer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

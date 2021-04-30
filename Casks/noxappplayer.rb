cask "noxappplayer" do
  version "3.8.5.3,20210412:b6156acb6f2f49e4a085915fb16c3c64"
  sha256 "b8b4b96e2ccddf6a45a2c7e14be701d8412cbe050296593a08a89f78e2dd2a04"

  url "https://res06.bignox.com/full/#{version.after_comma.before_colon}/#{version.after_colon}.dmg?filename=NoxInstaller_#{version.before_comma}_en.dmg"
  name "NoxAppPlayer"
  desc "Android emulator to play mobile games"
  homepage "https://www.bignox.com/"

  livecheck do
    url "https://www.bignox.com/en/download/fullPackage/mac_fullzip"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+)/([^/]+)\.dmg\?filename=NoxInstaller_(\d+(?:\.\d+)*)_en\.dmg}i)
      "#{match[3]},#{match[1]}:#{match[2]}"
    end
  end

  container nested: "NoxAppPlayerInstaller.app/Contents/MacOS/NoxAppPlayer.zip"

  app "NoxAppPlayer.app"

  zap trash: [
    "~/Library/Application Support/NoxAppPlayer",
    "~/Library/Saved Application State/com.nox.NoxAppPlayer.savedState",
  ]
end

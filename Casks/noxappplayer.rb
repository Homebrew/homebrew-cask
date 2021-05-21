cask "noxappplayer" do
  version "3.8.5.5,20210513:a9853a4a5ba64f9b96c1e3bf6df15e3b"
  sha256 "1668997e8163e4521d379e1b9406fddceb901eb8fca92daf347b1534b99770f7"

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

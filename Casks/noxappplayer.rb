cask "noxappplayer" do
  version "3.8.5.6,20210617:7b95569e63e7493ea3daf9fae4574e4c"
  sha256 "ec816784862cab820cc0b93f73eca6783628e6eb88607e17285545edc523a976"

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

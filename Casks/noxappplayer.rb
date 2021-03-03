cask "noxappplayer" do
  version "3.8.5.2,20210207:d657acbbd3a94afd9edeebca37ff75a0"
  sha256 "7d2abf2ffb5e39355aa6061d4d5daf572dd89d4d7c2297da8d8fc4765d3564f1"

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
end

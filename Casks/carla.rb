cask "carla" do
  version "2.5.3"
  sha256 "8e0a5800bb16895a6d55bce5aad2a792d720ca53192f344e4936cb7595689c7a"

  url "https://github.com/falkTX/Carla-Releases/releases/download/v#{version}/Carla-#{version}-macos-universal.dmg",
      verified: "github.com/falkTX/Carla-releases/"
  name "Carla"
  desc "Audio plugin host supporting LADSPA, LV2, VST2/3, SF2 and more"
  homepage "https://kxstudio.linuxaudio.org/Applications:Carla"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Carla.app"
end

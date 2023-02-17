cask "carla" do
  version "2.5.3"
  sha256 "e69145e1b3b9232d8ec31da9a23cf96163563e63"

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

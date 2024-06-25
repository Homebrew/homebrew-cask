cask "continuity-activation-tool" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/dokterdok/Continuity-Activation-Tool/archive/refs/heads/master.tar.gz"
  name "Continuity Activation Tool"
  desc "Enable continuity features on compatible hardware"
  homepage "https://github.com/dokterdok/Continuity-Activation-Tool/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["org.dokterdok.ContinuityActivationTool"].short_version
    end
  end

  app "Continuity-Activation-Tool-master/Continuity Activation Tool.app"
end

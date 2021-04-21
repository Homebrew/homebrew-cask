cask "continuity-activation-tool" do
  version "2.0"
  sha256 :no_check

  url "https://github.com/dokterdok/Continuity-Activation-Tool/archive/master.zip"
  name "Continuity Activation Tool"
  desc "Enable continuity features on compatible hardware"
  homepage "https://github.com/dokterdok/Continuity-Activation-Tool/"

  app "Continuity-Activation-Tool-master/Continuity Activation Tool.app"
end

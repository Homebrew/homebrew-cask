cask "coarchi" do
  version "0.8.1.202112061132"
  sha256 "ffd87ed646d20842e85d02e79377e6aed15ea18b29590f5f2bb32efe7b0a4c4d"

  url "https://www.archimatetool.com/downloads/coarchi1/coArchi_#{version}.archiplugin"
  name "coArchi plugin for Archi"
  desc "Model Collaboration plugin for Archi"
  homepage "https://www.archimatetool.com/plugins/#coArchi"

  livecheck do
    url "https://www.archimatetool.com/plugins/"
    regex(/\s+data-file="coArchi_(\d+(?:\.\d+)+).archiplugin"/i)
  end

  container type: :zip

  artifact "org.archicontribs.modelrepository_#{version}.jar",
           target: "#{ENV["HOME"]}/Library/Application Support/Archi4/dropins/org.archicontribs.modelrepository_#{version}.jar"
  artifact "org.archicontribs.modelrepository.commandline_#{version}.jar",
           target: "#{ENV["HOME"]}/Library/Application Support/Archi4/dropins/org.archicontribs.modelrepository.commandline_#{version}.jar"

  caveats "Restart Archi for the changes to take effect after installing/uninstalling the plugin."
end

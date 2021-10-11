cask "coarchi" do
  version "0.7.1.202102021056"
  sha256 "ee15eea65d1f12441a6760237e5f72a328889226fc75cde6911d6aeaee57a924"

  url "https://www.archimatetool.com/downloads/coarchi/coArchi_#{version}.archiplugin"
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

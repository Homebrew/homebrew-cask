cask "coarchi" do
  version "0.8.0.202110121448"
  sha256 "3615ab5f1064b301a2f7f69e95782d5cb42996ee6772136214f2a4e9f0bcaf71"

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

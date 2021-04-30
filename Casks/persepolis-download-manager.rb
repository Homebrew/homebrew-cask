cask "persepolis-download-manager" do
  version "3.2.0"
  sha256 "39514a158201483a713c918d744b823f63ae39142aa2024713c21174385400a3"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}_mac.zip",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "GUI for aria2"
  homepage "https://persepolisdm.github.io/"

  app "Persepolis Download Manager.app"
end

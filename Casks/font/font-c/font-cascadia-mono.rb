cask "font-cascadia-mono" do
  version "2407.24"
  sha256 "e67a68ee3386db63f48b9054bd196ea752bc6a4ebb4df35adce6733da50c8474"

  url "https://github.com/microsoft/cascadia-code/releases/download/v#{version}/CascadiaCode-#{version}.zip"
  name "Cascadia Mono"
  homepage "https://github.com/microsoft/cascadia-code"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ttf/CascadiaMono.ttf"
  font "ttf/CascadiaMonoItalic.ttf"

  # No zap stanza required
end

cask "seashore" do
  version "2.5.10"
  sha256 "79ff54b5018781765cbfae7fa12b5f920b8eff6292e9aee0330d7c59b7e1a9bc"

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast "https://github.com/robaho/seashore/releases.atom"
  name "Seashore"
  desc "Image editing application similar to GIMP"
  homepage "https://github.com/robaho/seashore"

  app "Seashore.app"
end

cask "sql-power-architect-jdbc" do
  version "1.0.9"
  sha256 "2936e0fdff0cecf4c3a4d111d2b5e7e26977c366a2b7905b9f28210e3f39f3e4"

  url "http://www.bestofbi.com/downloads/architect/#{version}/SQL-Power-Architect-OSX-#{version}.dmg"
  appcast "http://www.bestofbi.com/page/architect_download_os"
  name "SQL Power Architect Community edition"
  desc "Data warehouse modeling tool"
  homepage "http://www.bestofbi.com/page/architect"

  app "SQL Power Architect.app"
end

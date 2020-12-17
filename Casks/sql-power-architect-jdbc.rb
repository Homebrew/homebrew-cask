cask "sql-power-architect-jdbc" do
  version "1.0.9"
  sha256 "dde6bbcb8327f95b36ad9aab785fda49d153fc6b1e9ff6739c206a6e90f49d09"

  url "http://www.bestofbi.com/downloads/architect/#{version}/SQL-Power-Architect-OSX-#{version}.tar.gz"
  appcast "http://www.bestofbi.com/page/architect_download_os"
  name "SQL Power Architect Community edition"
  homepage "http://www.bestofbi.com/page/architect"

  app "SQL Power Architect JDBC.app"
end

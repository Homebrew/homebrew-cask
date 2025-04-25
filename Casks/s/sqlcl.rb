cask "sqlcl" do
  version "25.1.1.113.2054"
  sha256 "ff986efc6794d4bcbea51f32d9d7cdb8390ce64cca534b1322ed75c2e56fcc4a"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/p>Version.*?(\d+(?:\.\d+)+)/i)
  end

  stage_only true

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end

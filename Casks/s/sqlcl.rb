cask "sqlcl" do
  version "24.4.4.086.1931"
  sha256 "21a9cb33008c2d3343084750cdd5014db07c0d8be78e63a45376c82b47f89f8e"

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

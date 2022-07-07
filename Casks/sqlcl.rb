cask "sqlcl" do
  version "22.2.0.172.1718"
  sha256 "eb69022227fec14578e319a398bd20958e94da77b263300ba09af8bd5aac4aa1"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/tools/downloads/sqlcl-downloads.html"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end

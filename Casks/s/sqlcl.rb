cask "sqlcl" do
  version "25.3.2.317.1117"
  sha256 "0af1ecb1da1a840d800cfe88fe20a35aeb9ceac9ff38729be0025b937b101d7e"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  # Runs after the staging of the zip file
  postflight do
    cask_dir   = Pathname("#{HOMEBREW_PREFIX}/Caskroom/sqlcl")
    version_dir = cask_dir/version
    latest_dir  = cask_dir/"latest"

    latest_dir.delete if latest_dir.symlink?

    latest_dir.make_symlink(version_dir)
  end

  stage_only true

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end

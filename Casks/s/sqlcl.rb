cask "sqlcl" do
  version "25.4.1.022.0618"
  sha256 "b717d83aa1a7ada2ca38e7c8be5b369ea6a2f9f50c5fdb55e18d263b471ecab9"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  postflight do
    cask_dir   = Pathname("#{HOMEBREW_PREFIX}/Caskroom/sqlcl")
    version_dir = cask_dir/version
    latest_dir  = cask_dir/"latest"

    latest_dir.delete if latest_dir.symlink?

    latest_dir.make_symlink(version_dir)
  end

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{HOMEBREW_PREFIX}/Caskroom/sqlcl/latest/sqlcl/bin"
  end
end

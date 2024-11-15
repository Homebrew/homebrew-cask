cask "tau" do
  arch arm: "_arm64"

  version "2.34"
  sha256 :no_check

  url "http://tau.uoregon.edu/tau#{arch}.dmg"
  name "TAU"
  desc "Profiling and tracing toolkit"
  homepage "https://www.cs.uoregon.edu/research/tau/home.php"

  livecheck do
    url "https://www.cs.uoregon.edu/research/tau/downloads.php"
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  suite "TAU"

  uninstall delete: "#{staged_path}/TAU/tau/"

  zap trash: "~/.ParaProf"

  caveats do
    depends_on_java
  end
end

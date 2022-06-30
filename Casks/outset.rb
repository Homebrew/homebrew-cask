cask "outset" do
  version "3.0.3"
  sha256 "ab9ae93045eaee02a4e57dd5ff18e026ed2381062c1579e4555ff7112c110df4"

  url "https://github.com/chilcote/outset/releases/download/#{version}/outset-#{version}.pkg"
  name "outset"
  homepage "https://github.com/chilcote/outset"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "outset-#{version}.pkg"

  uninstall launchctl: [
              "com.github.outset.boot",
              "com.github.outset.cleanup",
              "com.github.outset.login",
              "com.github.outset.login-privileged",
              "com.github.outset.on-demand",
            ],
            pkgutil:   "com.github.outset"

  caveats do
    files_in_usr_local
  end
end

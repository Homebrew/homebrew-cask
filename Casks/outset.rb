cask "outset" do
  version "3.0.1"
  sha256 "c00c0041e6fb02e457ada88072b71ef92ffdee75778af51a0f82b8cd71a7987e"

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

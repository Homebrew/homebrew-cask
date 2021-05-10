cask "depthmapx" do
  version "0.8.0"
  sha256 "0c32fd8e15eff4bdd19fe4fae4f9dc29c6225a5a238bc25664cac0f5b6d5c1ab"

  url "https://github.com/SpaceGroupUCL/depthmapX/releases/download/v#{version}/depthmapX-#{version}_macos.zip"
  name "depthmapX"
  desc "Spatial Network Analysis Software"
  homepage "https://github.com/SpaceGroupUCL/depthmapX"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "depthmapX.app"

  caveats "depthmapX-cli is not included"
  caveats do
    unsigned_accessibility
  end
end

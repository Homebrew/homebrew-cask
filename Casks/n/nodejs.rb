cask "nodejs" do
  version "26.3.0"
  sha256 "0eefec8d427dd5d4e282660344ee5b482e8bf5b09d13fd572f456d0da47217e0"

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name "Node.js"
  desc "JavaScript runtime built on the V8 engine"
  homepage "https://nodejs.org/"

  livecheck do
    url "https://nodejs.org/dist/latest/"
    regex(/node-v([0-9]+(?:\.[0-9]+)+)\.pkg/i)
    strategy :page_match
  end

  depends_on macos: :monterey

  pkg "node-v26.3.0.pkg"

  uninstall pkgutil: "org.nodejs.node.pkg"
end

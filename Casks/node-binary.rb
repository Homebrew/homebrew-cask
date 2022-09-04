cask "node-binary" do
  arch arm: "arm64", intel: "x64"

  version "18.8.0"
  sha256 arm:  "a03cb97533447a5005accef871b899df0e9da33d8a805675ac53715a534b3dcb",
         intel: "f8527a1820f50a5f4c835d933e5c5318c4f93f7382294db5875791e2cb0cc4fa"

  url "https://nodejs.org/dist/v#{version}/node-v#{version}-darwin-#{arch}.tar.xz"
  name "Node.js"
  homepage "https://nodejs.org/"

  livecheck do
    url "https://nodejs.org/en/download/current"
    regex(/node-v(\d+(?:\.\d+)+)\.pkg/i)
  end

  binary "node-v#{version}-darwin-#{arch}/bin/node"
  binary "node-v#{version}-darwin-#{arch}/bin/npm"
  binary "node-v#{version}-darwin-#{arch}/bin/npx"
  binary "node-v#{version}-darwin-#{arch}/bin/corepack"
 end

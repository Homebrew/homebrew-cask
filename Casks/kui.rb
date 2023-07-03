cask "kui" do
  arch arm: "arm64", intel: "x64"

  version "13.1.4"
  sha256 arm:   "ba707efd53ad1ff9f61bf9c28b0bff02684b2d8950790ab2292aeceeab8df389",
         intel: "2bd61658192a1a513a6a5c2ba0c45df95bafb07790f8d7fce63df8f98eea24c1"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  name "Kui"
  desc "CLI graphics framework"
  homepage "https://github.com/kubernetes-sigs/kui"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end

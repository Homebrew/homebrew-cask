cask "invesalius" do
  arch arm: ".arm64"

  version "3.1.99998"
  sha256 arm:   "b5032dfb80af29efde4e58c9dc48b164c31335d8ef91f5b51dbeea95088f778f",
         intel: "315f4850f8b84f5116eadaaf76434a5337e84b1fc3fbc303d87d80c0594c98b7"

  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius.#{version}#{arch}.dmg"
  name "InVesalius"
  desc "3D medical imaging reconstruction software"
  homepage "https://github.com/invesalius/invesalius3/"

  # Upstream marks some versions with a seemingly stable version format as
  # pre-release on GitHub, so it's necessary to check releases instead of tags.
  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "InVesalius.app"
end

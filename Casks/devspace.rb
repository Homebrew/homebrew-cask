cask "devspace" do
  arch arm: "arm64", intel: "amd64"

  version "6.3.2"
  sha256 arm:   "de09322bd4186192433a0bba3ac2f6284d1e2819b638871011365fbff788b382",
         intel: "ddb2af8cc6e2b184e643df721e20a47b025aa70861f452f3a6c444de8a23ca89"

  url "https://github.com/devspace-sh/devspace/releases/download/v#{version}/devspace-darwin-#{arch}",
      verified: "github.com/devspace-sh/devspace/"
  name "DevSpace"
  desc "Develop and deploy cloud-native software with Docker and Kubernetes faster"
  homepage "https://devspace.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "kubernetes-cli"

  binary "devspace-darwin-#{arch}", target: "devspace"

  zap trash: "~/.devspace"
end

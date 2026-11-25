cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.21.1"
  sha256 arm:   "8c22f6711cb6e30e7ac3e697592ddc8ed064b93a8477b90e48675a711caf3d38",
         intel: "99149d019af638fa10f2eb429b345457cb18762238a80167a11b04d42e6c236c"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  zap :not_required
end

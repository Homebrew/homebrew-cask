cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.55.0"
  sha256 arm:   "9f0489f25aed8c4af8dd398b52d3ab51225f5253e079f6945ea16fba2db314f5",
         intel: "300a6537a9edb53e1e523e0e5c894a8496748c541d9dd3dc9e8729b76b93663e"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman CLI"
  desc "CLI for command-line API management on Postman"
  homepage "https://www.postman.com/downloads/"

  livecheck do
    url "https://dl-cli.pstmn.io/api/version/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end

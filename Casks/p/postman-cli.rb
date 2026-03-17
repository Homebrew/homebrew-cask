cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.1"
  sha256 arm:   "21b0eec254e5fee00d917fc534abc0faa056a8ee6edc8c8c3305fad4dd4000ee",
         intel: "be9eed85e731f1c4171b84c151234b2101622f4f6b140685d5b99a1841d568b9"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-cli.pstmn.io/download/"
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

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end

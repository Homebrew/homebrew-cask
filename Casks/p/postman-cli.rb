cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.48.0"
  sha256 arm:   "9064016246c3499fde3d2f1b6cf2bf255a15103f27a9d97e0bbf6010c58644e5",
         intel: "ec4b5f2f07bf7d0eca19ece750b0dee5655ca6afeb5cdbf41e32d431c35ac5f7"

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
  depends_on :macos

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end

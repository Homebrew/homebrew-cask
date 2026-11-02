cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.84.0"
  sha256 arm:   "ec93099058b572185e0dd9b2dbfc17ca0f5b26390947f78c4cc67051a6525e73",
         intel: "cc2ff2ad70fcb5aff171fb9a75745b265499f988cfb251eaa2dd0a9ce8e02a07"

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

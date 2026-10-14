cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.74.0"
  sha256 arm:   "5401f9454f1e590fc4e78f507363ec37d321ad31d9f5f865c82c3c8d127f7468",
         intel: "18862e9d547d35940a23e4cd590960708484e10e64fdf61df006c725c49fcd80"

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

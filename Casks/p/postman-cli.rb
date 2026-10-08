cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.71.0"
  sha256 arm:   "6981b72347efe888ae797391d0972a282a391ace5256221d41cdfc03e39133bf",
         intel: "1e1ab9bd648eeb11f6b374e1dd3e1acb34dbf6e449e0e3c383c0f8355d976dc2"

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

cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "db65b68c6037af29e2f4e13908c4809594c2943b649b5039292de8ba686f3bf4",
         intel: "db65b68c6037af29e2f4e13908c4809594c2943b649b5039292de8ba686f3bf4"

  url "https://dl-cli.pstmn.io/download/postman-cli-cli-#{version}-macos-#{arch}.zip",
      verified: "dl-cli.pstmn.io/download/"
  name "Postman CLI"
  desc "CLI for command-line API management on Postman"
  homepage "https://www.postman.com/downloads/"

  livecheck do
    url "https://dl-cli.pstmn.io/api/version/latest"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true

  binary "postman-cli", target: "postman"

  zap trash: "~/.postman"
end

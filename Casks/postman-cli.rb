cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "0.0.12"
  sha256 arm:   "d43dc6793fd6b3acd452a3c8c55ed56d7ad45ab3465aa0c58ffb750a648d18aa",
         intel: "d43dc6793fd6b3acd452a3c8c55ed56d7ad45ab3465aa0c58ffb750a648d18aa"

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

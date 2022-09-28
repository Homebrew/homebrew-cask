cask "postman-cli" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "a8b49fda050bf6fe99f886807474aa60c7c55e9e743972b6f0a221bd6849f84e",
         intel: "a8b49fda050bf6fe99f886807474aa60c7c55e9e743972b6f0a221bd6849f84e"

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

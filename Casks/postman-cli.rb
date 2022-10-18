cask "postman-cli" do
  version "1.0.3"
  sha256 "2fce4aa48fed7437b8b8ec3ae008071df91737b8c7959217a8da16fbc9805f42"

  url "https://dl-cli.pstmn.io/download/postman-cli-cli-#{version}-macos-x64.zip",
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

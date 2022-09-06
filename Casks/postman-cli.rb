cask "postman-cli" do
  arch intel: "osx_64", arm: "osx_arm64"

  version "0.0.4"
  sha256 arm:   "31bf3f2d222e824538fc602621a1d6ca037384f6f8fc5867bb6f026d3dc491b7",
         intel: "31bf3f2d222e824538fc602621a1d6ca037384f6f8fc5867bb6f026d3dc491b7"

  url "https://dl-cli.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-cli.pstmn.io/download/version/"
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

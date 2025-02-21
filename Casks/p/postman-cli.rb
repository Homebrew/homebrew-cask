cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.13.1"
  sha256 arm:   "1c6d706fa8d0ec184173ae3a0c0d920c436107eabe295997ae761b6fdf8e14c7",
         intel: "6ac27f488df2a852d42a3b45162d8e1991a4ccca1aa194967727486d34c5b783"

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

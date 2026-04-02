cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.33.3"
  sha256 arm:   "f834ef94bbdf64ca7bb54e345a4dc0332fb1a9748fc2ab4ab8e597ae1df694e0",
         intel: "613b89ed7e164bdfedca229f7a35830df3cf28a2a4cdcc0cabc0163fdd4a35d5"

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

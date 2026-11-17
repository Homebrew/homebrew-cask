cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.91.0"
  sha256 arm:   "974ca780b152f9f149a1cfb76be3baf4e3474e8dda52bf9a0262b18497932e7d",
         intel: "ef1c370c87c3f0908bd7c17d9512339ffea0121f337d735fcda276d85c190d50"

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

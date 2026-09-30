cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.67.0"
  sha256 arm:   "9fd8bcf4ae8e392bdcf92769021d3218dd5f6ce01102d17cf7e06dd09e436cbf",
         intel: "45962ffa3a951d56ae88231bbc3d272912edcf4d071cc966f07676ad46fac24f"

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

cask "postman-cli" do
  arch arm: "osx_arm64", intel: "osx64"

  version "1.29.5"
  sha256 arm:   "fb848ed7089c6f21adfab1ec06bd7d69a0740464b5f0d58f7df2b7aaff34993f",
         intel: "ade1a3938a209120561fee605c66bb36d8051d4516de25a76af8e43ea16842db"

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
